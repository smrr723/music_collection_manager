require 'pg'
require_relative '../db/sql_runner'
require_relative '../artists'


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
end

def list_all_albums()
end

def list_albums_by_artist(artist_name)
end

def list_artist_by_album(album_title)
end




end
