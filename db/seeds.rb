# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Dog.destroy_all

Chatroom.destroy_all

dogs = Dog.create!([
  {
    user_id: 1,
    name: "Loki",
    gender: "female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user_id: 2,
    name: "Lulu",
    gender: "male",
    age: "13",
    race: "Berger Allemand",
    height: "25cm",
    address: "Tour Eiffel, Paris",
    description: "Mon chien ehe"
  },
])

chatroom = Chatroom.create!(
  name: 'message')
