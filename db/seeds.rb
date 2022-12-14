# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Movies are being created"

movies = Movie.create([
    {
        title: "Troll",
        description: "Best Movie Ever",
        category: "Action"
    },
    {
        title: "Troll",
        description: "Best Movie Ever",
        category: "Action"
    },
    {
        title: "Ramayana",
        description: "The Legend of Prince Rama (1993) 8.5",
        category: "Romantic"
    },
    {
        title: "Once Upon a Time",
        description: "Once Upon a Time in America 1984",
        category: "Action"
    },
    {
        title: "The Loft",
        description: "Once upon a time in loft 1984",
        category: "Cool"
    }
])





puts "Movies created"