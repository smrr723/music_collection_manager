require 'pg'
require_relative '../db/sql_runner'
require_relative '../models/artist'


class Album

attr_accessor :artist_id, :album_title, :genre
attr_reader :id

def initialize(options)
  @artist_id = options['artist_id']
  @album_title = options['album_title']
  @genre = options['genre']
  @id = options['id'].to_i if options['id']

end


# C R U D

def save()
  sql = "INSERT INTO albums (artist_name, album_title, genre) VALUES ($1, $2, $3) RETURNING id;"
  values = [@artist_name, @album_title, @genre]
  result = SqlRunner.run(sql, values)
  @id = result[0]['id'].to_i
end

def self.list_all()
  sql = "SELECT * FROM albums;"
  values = []
  album_hashes = SqlRunner.run(sql, values)
  albums = album_hashes.map { |album| Album.new( album ) }
  return albums
end

#
def list_albums_by_artist(artist_id)
  sql = "SELECT * FROM albums WHERE artist_id = $1;"
  values = [artist_id]
  results = SqlRunner.run(sql, values)
  albums = Album.new(results)
  return albums
end
#
def list_artist_by_album(album_title)
  sql = "SELECT * FROM artist_id WHERE album_title = $1"
  values = [album_title]
  results = SqlRunner.run(sql, values)
  artists = Album.new(results)
  return artists
end
#
def self.delete_all()
  sql = "DELETE FROM albums"
  values = []
  SqlRunner.run(sql, values)
end


end
