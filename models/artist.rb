require 'pg'
require_relative '../db/sql_runner'


class Artist

attr_accessor :artist_name
attr_reader :id

def initialize(options)
  @artist_name =
  @id = options['id'].to_i if options['id']

end

def save()
  db = PG.connect({dbname: 'music_collection', host: 'localhost'})
  sql = "INSERT INTO artists (artist_name) VALUES ($1)"

  values = [@artist_name]
  db.prepare("save_customer", sql)
  db.exec_prepared("save_customer", values)
  db.close
end


end
