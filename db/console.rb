require 'pry'
require_relative '../models/album'
require_relative '../models/artist'

artist1 = Artist.new({
  'artist_name' => 'Toto'
  })

artist2 = Artist.new({
  'artist_name' => 'Van Halen'
  })

artist3 = Artist.new({
  'artist_name' => 'Daft Punk'
  })

artist4 = Artist.new({
  'artist_name' => 'MGMT'
  })

artist5 = Artist.new({
  'artist_name' => 'Dire Straits'
  })


artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist5.save()

album1 = Album.new({'artist_id' => artist1.id(), 'album_title' => 'Toto Album 1', 'genre'=> 'Rock'})
album1.save()

album2 = Album.new({'artist_id' => artist2.id(), 'album_title' => 'Van Halen Album 1', 'genre'=> 'Rock'})
album2.save()

album3 = Album.new({'artist_id' => artist3.id(), 'album_title' => 'Daft Punk Album 1', 'genre'=> 'Electronic'})
album3.save()

album4 = Album.new({'artist_id' => artist4.id(), 'album_title' => 'MGMT Album 1', 'genre'=> 'Electronic'})
album4.save()

album5 = Album.new({'artist_id' => artist5.id(), 'album_title' => 'Dire Straits Album 1', 'genre'=> 'Rock'})
album5.save()


binding.pry
nil
