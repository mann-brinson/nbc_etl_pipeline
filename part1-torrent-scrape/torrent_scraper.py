from lxml.html import fromstring
import subprocess
import time
import json

class RARBG_Scraper():
    def __init__(self):
        self.parent_file = 'parent.html'
        self.child_file = 'child.html'
        self.url_base = 'https://rarbg.to'
        
    def get_torrents(self, a, b):
        '''GOAL: For each torrent on the parent page, extract featuress.
        Then download the child's page, and extract the infohash feature.
        n - total # of top torrents up to 100
        a - start index, b - end index'''

        #Download the parent page
        subprocess.call(['sh', './download_parent.sh'])
        with open(self.parent_file, "r") as fd: page = fd.read()
        tree = fromstring(page)

        torrents = list()
        row_id = 1
        for torr in tree.xpath('//tr[@class="lista2"]')[a:b]: #Hardcode

            # torr = tree.xpath('//tr[@class="lista2"]')[0]
            tds = torr.xpath('td')

            name = tds[1].xpath('a/text()')[0] #Name

            if len(tds[1].xpath('a/@href')) == 1: imdb_id = None
            else: imdb_id = tds[1].xpath('a/@href')[1].split('=')[1] #imbd_id

            added = tds[2].xpath('text()')[0] #added
            size = tds[3].xpath('text()')[0] #size
            n_seed = tds[4].xpath('font/text()')[0] #n_seed
            n_leech = tds[5].xpath('text()')[0] #n_leech
            torrent_id = tds[1].xpath('a/@href')[0] #torrent_id
            torr_url = f'{self.url_base}{torrent_id}'

            #Download the child file to extract the infohash
            subprocess.call(['sh', './download_child.sh', torr_url])
            with open(self.child_file, "r") as fd: page = fd.read()
            tree2 = fromstring(page)
            infohash = tree2.xpath('//td[@class="lista"]/a/@href')[2].split(':')[3].split('&')[0]

            torrent = {'name': name, 'imdb_id': imdb_id, 'added': added, 'size': size, 'n_seed': n_seed,
                      'n_leech': n_leech, 'torrent_url': torr_url, 'infohash': infohash}
            # print(row_id)
            # print(torrent)
            torrents.append(torrent)
            row_id += 1
        #Store the torrents within the class instance
        self.torrents = torrents
        
    def write_torrents(self):
        '''Write the torrents from class instance to file'''
        output_file = 'torrents.jl'
        fd_out = open(output_file, "w")
        for torrent in self.torrents:
            data = json.dumps(torrent, ensure_ascii=False)
            fd_out.write(data)
            fd_out.write('\n')
        fd_out.close() 

#DRIVER
scraper = RARBG_Scraper()
scraper.get_torrents(0, 100)
scraper.write_torrents()
