# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


captains=[
    {captain_name: "Jack", film_group: "OG", captains_id:1},
    {captain_name: "Barbossa", film_group: "OG", captains_id:2},
    {captain_name: "Will", film_group: "TRILOGY", captains_id:3},
    {captain_name: "Elizabeth", film_group: "TRILOGY", captains_id:4},
    {captain_name: "Norington", film_group: "TRILOGY", captains_id:5},
    {captain_name: "Davey Jones", film_group: "TRILOGY", captains_id:6},
    {captain_name: "Blackbeard", film_group: "ENCORE", captains_id:7},
    {captain_name: "Salazar", film_group: "ENCORE", captains_id:8}
]

captains.each do | captain_hash | 
    Captain.create(
        captain_name: captain_hash[:captain_name],
         film_group: captain_hash[:film_group],
    )
end


movies=[
    {movie_name:"PotC: The Curse of the Black Pearl", movie_id:1},
    {movie_name:"PotC: Dead Man's Chest", movie_id:2},
    {movie_name:"PotC: At Worlds End", movie_id:3},
    {movie_name:"PotC: On Sranger Tides", movie_id:4},
    {movie_name:"PotC: Dead Men Tell No Tales", movie_id:5}
]

movies.each do | movie_hash | 
    Movie.create(
        movie_name: movie_hash[:movie_name]
    )
end


bricksets=[
    {brickset_name:"Isla de Muerta", brickset_num:4181, piece_count:139, movie_id:1, brickset_id:1},
    {brickset_name:"The Cannibal Escape", brickset_num:4182, piece_count:261, movie_id:2, brickset_id:2},
    {brickset_name:"The Mill", brickset_num:4183, piece_count:349, movie_id:2, brickset_id:3},
    {brickset_name:"The Black Pearl", brickset_num:4184, piece_count:779, movie_id:3, brickset_id:4},
    {brickset_name:"The Captain's Cabin", brickset_num:4191, piece_count:83, movie_id:4,brickset_id:5},
    {brickset_name:"Fountain of Youth", brickset_num:4192, piece_count:108, movie_id:4,brickset_id:6},
    {brickset_name:"The London Escape", brickset_num:4193, piece_count:442, movie_id:4,brickset_id:7},
    {brickset_name:"Whitecap Bay", brickset_num:4194, piece_count:726, movie_id:4,brickset_id:8},
    {brickset_name:"Queen Anne's Revenge", brickset_num:4195, piece_count:1049, movie_id:4,brickset_id:9},
    {brickset_name:"Silent Mary", brickset_num:71042, piece_count:2261, movie_id:5,brickset_id:10}
]

bricksets.each do | brickset_hash |  
    Brickset.create(
        brickset_name: brickset_hash [:brickset_name], 
        brickset_num: brickset_hash [:brickset_num],
        piece_count: brickset_hash [:piece_count],
        movie_id: brickset_hash [:movie_id],
    )
end

captain_inventories=[
    {captains_id:1, brickset_id:1},
    {captains_id:2, brickset_id:1},
    {captains_id:4, brickset_id:1},
    {captains_id:1, brickset_id:2},
    {captains_id:3, brickset_id:2},
    {captains_id:1, brickset_id:3},
    {captains_id:3, brickset_id:3},
    {captains_id:5, brickset_id:3},
    {captains_id:1, brickset_id:4},
    {captains_id:3, brickset_id:4},
    {captains_id:6, brickset_id:4},
    {captains_id:1, brickset_id:5},
    {captains_id:1, brickset_id:6},
    {captains_id:2, brickset_id:6},
    {captains_id:7, brickset_id:6},
    {captains_id:1, brickset_id:7},
    {captains_id:1, brickset_id:8},
    {captains_id:1, brickset_id:9},
    {captains_id:7, brickset_id:9},
    {captains_id:1, brickset_id:10},
    {captains_id:8, brickset_id:10}
]

captain_inventories.each do | captain_inventory_hash | 
    CaptainInventory.create(
        captains_id: captain_inventory_hash [:captains_id], 
        brickset_id: captain_inventory_hash [:brickset_id],
    )
end
