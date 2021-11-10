# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Pet.create(name: "Dog", description: "Man's best friend")
p2 = Pet.create(name: "Cat", description: "Sleeps all day")

Breed.create(name: "Shiba Inu", description: "a bitcoin", color: "brown", rating: 1, pet: p1)
Breed.create(name: "Poodle", description: "fancy", pet: p1)
Breed.create(name: "Tabby", description: "a cat", pet: p2)