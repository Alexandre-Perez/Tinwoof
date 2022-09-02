# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Comment.destroy_all
Dog.destroy_all
User.destroy_all
Chatroom.destroy_all

users = User.create!([
  {
    email: "karim@gmail.com",
    password: "karimdu7518",
    first_name: "Karim",
    last_name: "Meghraoui",
    location: "Paris 18"
  },

  {
    email: "yassinou@gmail.com",
    password: "yassindu91",
    first_name: "Yassinou",
    last_name: "Bébou",
    location: "Evry"
  },

  {
    email: "merouane@gmail.com",
    password: "merouane",
    first_name: "Merouane",
    last_name: "Masaoudi",
    location: "Marseille"
  },

  {
    email: "ueno@gmail.com",
    password: "uenoueno",
    first_name: "Hidesaburō",
    last_name: "Ueno",
    location: "Tokyo"
  },

  {
    email: "alexander@gmail.com",
    password: "alexander",
    first_name: "Alexander",
    last_name: "Pépé",
    location: "Paris"
  },
])

dogs = Dog.create!([
  {
    user: users[4],
    name: "Chowy",
    gender: "Female",
    age: "10",
    race: "Chow-chow",
    height: "20cm",
    address: "Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[2],
    name: "Bull",
    gender: "Male",
    age: "13",
    race: "Bulldog",
    height: "10cm",
    address: "Marseille",
    description: "Mon chien est très gentil"
  },

  {
    user: users[3],
    name: "Hachikō",
    gender: "Male",
    age: "10",
    race: "Akita Inu",
    height: "25cm",
    address: "Shibuya, Tokyo",
    description: "Mon chien Hachikō est très fidèle, il m'attend toujours devant la gare ! "
  },

  {
    user: users[1],
    name: "Croky",
    gender: "Female",
    age: "8",
    race: "Golden Retriver",
    height: "20cm",
    address: "Evry",
    description: "Oui."
  },

  {
    user: users[0],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },
])


file = URI.open("https://www.santevet.com/upload/admin/images/article/PMO/FICHES%20RACES/CHIENS/chowchow_assurance_sant%C3%A9vet.jpg")
dogs[0].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://jardinage.lemonde.fr/images/dossiers/2019-04/bulldog-133259.jpg")
dogs[1].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://cdn.dogsplanet.com/wp-content/uploads/2020/09/hachiko-chien.jpg")
dogs[2].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://static.wamiz.com/images/animaux/chiens/large/golden-retriever.jpg")
dogs[3].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[4].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

chatrooms = Chatroom.create!([
  {
    name: "Chatroom with #{users[4].first_name}"
  },

  {
    name: "Chatroom with #{users[2].first_name}"
  },

  {
    name: "Chatroom with #{users[3].first_name}"
  },

  {
    name: "Chatroom with #{users[1].first_name}"
  },

  {
    name: "Chatroom with #{users[0].first_name}"
  },
])
