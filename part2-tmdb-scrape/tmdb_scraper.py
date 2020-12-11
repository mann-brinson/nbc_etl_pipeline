import json
import requests

class TMDB_Scraper():
    def __init__(self):
        self.torrents_file = "torrents.jl"
        self.api_key = "2e510746ca28d7041056c7e57108de4c"
        
    def get_imdb_ids(self):
        '''Get all imdb_ids from the torrents file'''
        #Get set of imdb_ids from torrents file
        lines = list()
        imdb_ids = set()
        with open(self.torrents_file) as fd:
            for line in fd:
                line_j = json.loads(line)
                lines.append(line_j)
                if line_j['imdb_id'] != None:
                    imdb_ids.add(line_j['imdb_id'])
        self.imdb_ids = imdb_ids
        
    def get_movies(self):
        '''For each imdb_id, get movie and keyword attributes.'''
        #For each imdb_id fetch its details from tmdb via api
        movies = list()
        movie_keyword = list()

        for imdb_id in self.imdb_ids:
            endpoint_movie = f'https://api.themoviedb.org/3/find/{imdb_id}?api_key={self.api_key}&language=en-US&external_source=imdb_id'
            response = requests.get(endpoint_movie)

            #Get the desired attributes
            movie_details = response.json()['movie_results'][0]
            tmdb_id = movie_details['id'] #tmdb_id
            title = movie_details['original_title'] #title
            release_date = movie_details['release_date'] #release_date

            #Get the movie's keywords
            endpoint_movie_kws = f'https://api.themoviedb.org/3/movie/{tmdb_id}/keywords?api_key={self.api_key}'
            response = requests.get(endpoint_movie_kws)
            keywords = [kw['name'] for kw in response.json()['keywords']]
            movie = {'imdb_id': imdb_id, 'tmdb_id': tmdb_id, 'title': title, 'release_date': release_date}
            movies.append(movie)

            #Create list of dicts for movie's keywords
            for kw in keywords:
                m_kw = {'tmdb_id': tmdb_id, 'keyword': kw}
                movie_keywords.append(m_kw)
#         print(movies)
        self.movies = movies
        self.movie_keyword = movie_keywords
        
    def write_movies(self):
        '''Write the movies from class instance to file'''
        output_mapping = [{'source': self.movies, 'dest': 'movie.jl'}, 
                          {'source': self.movie_keyword, 'dest': 'movie_keyword.jl'}]
        for mapping in output_mapping:
            fd_out = open(mapping['dest'], "w")
            for row in mapping['source']:
                data = json.dumps(row, ensure_ascii=False)
                fd_out.write(data)
                fd_out.write('\n')
            fd_out.close()

#DRIVER
scraper = TMDB_Scraper()
scraper.get_imdb_ids()
scraper.get_movies()
scraper.write_movies()