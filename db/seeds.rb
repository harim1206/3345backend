# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "discogs-wrapper"
require "byebug"
require "json"
require "awesome_print"

puts ("hello")
wrapper = Discogs::Wrapper.new("api")
collection = wrapper.get_user_collection("harim1206")

byebug
ap ("collection: #{collection}")





















# artist = wrapper.get_artist("329937")

# You must be authenticated in order to search. I provide a few ways to do this. See the AUTHENTICATION section below.
# auth_wrapper = Discogs::Wrapper.new("api", user_token: "vujWxYfgzKJSAfdwkAOZmZdmyaHxWUiBccyQOhst")
# search       = auth_wrapper.search("Moodymann", :per_page => 10, :type => :artist)
#
# ap search
#
# byebug
#
# puts(JSON.parse(search))
#
# puts("search #{search.pagination.items}")           # => 2
# puts("search #{search.results.first.title}")           # => "Necrovore"
# puts("search #{search.results.first.type}")           # => "artist"
# puts("search #{search.results.first.id}")           # => 691078
#
# puts("artist.name: #{artist.name}")
# puts(artist.members.count)                 # => 4
# puts(artist.members.first.name)            # => "Mark Shelton"
# puts(artist.profile)                       # => "Heavy Metal band from ..."


#
#
# Track.create(title: "Hello World", artist: "MJ", release: "First")
# Track.create(title: "Cup", artist: "Khruangbin", release: "Second")
# Track.create(title: "Fun", artist: "Toto", release: "Third")
