require 'pry'
require_relative '..models/album'
require_relative '..models/artists'

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
