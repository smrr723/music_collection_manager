require 'pg'
require_relative '../db/sql_runner'
require_relative '../models/artist'


class Album

attr_accessor :artist_id, :album_title, :genre
attr_reader :id

def initialize(options)
  @artist_id = options['artist_id'].to_i()
  @album_title = options['album_title']
  @genre = options['genre']
  @id = options['id'].to_i if options['id']

end


# C R U D

def save()
  db = PG.connect({dbname: 'music_collection', host: 'localhost'})
  sql = "INSERT INTO albums (album_title, @genre) VALUES ($1, $2)"
  values = [@album_title, @genre]
  db.prepare("save_album", sql)
  db.exec_prepared("save_album", values)
  db.close
end

# def list_all_albums()
# end
def self.list_all()
  db = PG.connect({dbname: 'music_collection', host: 'localhost'})
  sql = "SELECT * FROM albums;"
  albums = db.exec(sql)
  db.close()
  return orders
end

#
# def list_albums_by_artist(artist_name)
# end
#
# def list_artist_by_album(album_title)
# end




end
