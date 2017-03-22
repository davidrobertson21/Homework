require("pry")
require_relative("./models/album")
require_relative("./models/artist")

Artist.delete_all()
Album.delete_all()

artist1 = Artist.new({"name" => "Artist 1"})
artist2 = Artist.new({"name" => "Artist 2"})

artist1.save()
artist2.save()


album1 = Album.new({"artist_id" => artist1.id,
                         "title" => "pop album",
                         "genre" => "pop"})
album2 = Album.new({"artist_id" => artist2.id,
                         "title" => "rock album",
                         "genre" => "rock"})

album1.save()
album2.save()


binding.pry
nil
