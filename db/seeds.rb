# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Categories are being created"

categories = Category.create([
    {
      name: "action"
    },
    {
      name: "adventure"
    },
    {
      name: "comedy"
    },
    {
      name: "drama"
    },
    {
      name: "fantasy"
    },
    {
      name: "horror"
    },
    {
      name: "musicals"
    },
    {
      name: "mystery"
    },
    {
      name: "romance"
    },
    {
      name: "science"
    },
    {
      name: "fiction"
    },
    {
      name: "sports"
    },
    {
      name: "thriller"
    },
    {
      name: "Western"
    },
])


puts "Categories created"
