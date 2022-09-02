# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  Actor.create(
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    known_for: FFaker::Movie.title,
  )
end
puts "Done!"

Movie.create(
  "title": "The Emperor's New Groove",
  "year": 2000,
  "plot": "Emperor Kuzco is turned into a llama by his ex-administrator Yzma, and must now regain his throne with the help of Pacha, the gentle llama herder.",
)

Movie.create(
  "title": "Shrek",
  "year": 2001,
  "plot": "A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back.",
)
