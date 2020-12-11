import mysql.connector
import json

class Importer():
    def __init__(self): #STEP 1
        self.mydb = self.create_db()
        self.cursor = self.create_cursor()
        self.source_files = {'torrent': 'torrents.jl', 'movie': 'movie.jl', 
                             'keyword': 'movie_keyword.jl', 'movie_keyword': 'movie_keyword.jl'}
        
    def create_db(self): #called by __init__
        mydb = mysql.connector.connect(host="localhost",user="inf551",password='inf551',database='torrents',auth_plugin='mysql_native_password')
        return mydb
    
    def create_cursor(self): #called by __init__
        cursor = self.mydb.cursor(buffered=True)
        return cursor
    
    def delete_table(self, table_name): #util
        '''Delete all rows from specified table.'''
        cmd = f'DELETE FROM `{table_name}`;'
        self.cursor.execute(cmd)
        self.mydb.commit()
        
    def delete_all_tables(self): #util
        for table in reversed(self.tables):
            cmd = f'DELETE FROM `{table}`;'
            self.cursor.execute(cmd)
        self.mydb.commit()
        
    def get_table_cols(self, table_name): #util
        cmd = f'''SHOW COLUMNS FROM torrents.`{table_name}`'''
        self.cursor.execute(cmd)
        data = self.cursor.fetchall()
        return data
        
    def import_data(self, table):
        '''For a give table_name, select the appropriate source files, transform them, and load the data to mysql.'''
        self.delete_table(table) #delete from table
        
        source_file = self.source_files[table]#get source file
        header = [i[0] for i in self.get_table_cols(table)] #get table columns
        header_str = ', '.join(header)
        print('header_str: ', header_str)
        print('source_file: ', source_file)
        
        ent_id = 1
        #For each table, load from source file into MySQL table
        if table == 'torrent':
            content = self.load_file(source_file)
            for line in content:
                line_j = json.loads(line)
                size = line_j['size'].split(' ')[0]
                size_units = line_j['size'].split(' ')[1]
                vals = [str(ent_id), line_j['name'], line_j['added'], size, size_units, line_j['n_seed'],
                       line_j['n_leech'], line_j['torrent_url'], line_j['infohash'], line_j['imdb_id']]
                if vals[-1] == None:
                    vals.pop()
                    vals.append('')
                values_str = (', '.join('"' + item + '"' for item in vals))
                print(values_str)
                self.insert_row(ent_id, table, header_str, values_str) #insert
                ent_id += 1
            
        if table == 'movie':
            content = self.load_file(source_file)
            for line in content:
                line_j = json.loads(line)
                vals = [str(line_j['tmdb_id']), line_j['imdb_id'], line_j['title'], line_j['release_date']]
                values_str = (', '.join('"' + item + '"' for item in vals))
                print(values_str)
                self.insert_row(ent_id, table, header_str, values_str) #insert
                ent_id += 1
                
        if table == 'keyword':
            content = self.load_file(source_file)
            keywords = set()
            for line in content:
                line_j = json.loads(line)
                keywords.add(line_j['keyword'])
            for keyword in keywords:
                vals = [str(ent_id), keyword]
                values_str = (', '.join('"' + item + '"' for item in vals))
                print(values_str)
                self.insert_row(ent_id, table, header_str, values_str) #insert
                ent_id += 1
            
        if table == 'movie_keyword':
            content = self.load_file(source_file)
            for line in content:
                line_j = json.loads(line)
                keyword = line_j['keyword']
                
                cmd = f'SELECT id FROM keyword WHERE keyword = "{keyword}"'
                self.cursor.execute(cmd)
                kw_id = self.cursor.fetchone()[0]
                vals = [str(ent_id), str(line_j['tmdb_id']), str(kw_id)]
                values_str = (', '.join('"' + item + '"' for item in vals))
                print(values_str)
                self.insert_row(ent_id, table, header_str, values_str) #insert
                ent_id += 1
        
    def load_file(self, file): #called by import_data()
        fd = open(file, 'r', encoding='utf-8-sig')
        content = fd.readlines()
        return content
    
    def insert_row(self, ent_id, table, header_str, values_str): #called by import_data()
        cmd_add = f'INSERT INTO torrents.{table} ({header_str}) values({values_str})' #add id to table   
        #print('cmd_add: ', cmd_add)
        cmd_sel = f'SELECT * FROM {table} WHERE id = "{ent_id}"' #select id just added
        self.cursor.execute(cmd_add) #Execute insert
        self.mydb.commit()
#         self.cursor.execute(cmd_sel) #Execute select
#         data = self.cursor.fetchall()
#         print(f'added to {table}', data)

#DRIVER
importer = Importer()
importer.delete_table('movie_keyword')
importer.import_data('torrent')
importer.import_data('movie')
importer.import_data('keyword')
importer.import_data('movie_keyword')

