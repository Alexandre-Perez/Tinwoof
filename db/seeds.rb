# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Dog.destroy_all


Comment.destroy_all
Dog.destroy_all

Chatroom.destroy_all


@chatroom = Chatroom.create!(name: 'message')

addresses = ["Rubelles", "Maincy", "La mée-sur-seine", "La rochette", "Fontainebleau", "Paris", "Melun", "Lieusaint", "Cesson"]
races = ["Labradoodle", "Batard", "Labrador", "Golden retriever", "Border Collie", "Shiba"]


10.times do
  dog = Dog.new(name: Faker::Tea.variety, age: rand(1..19), gender: ["Male", "Female"].sample, user: User.all.sample, description: Faker::Lorem.paragraphs, height: rand(10..140), address: addresses.sample, race: races.sample)
  if dog.save
    puts "dog created ...."
  else
    p dog.errors.messages
  end
end
