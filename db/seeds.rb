# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if Rails.env.development?
  puts "Delete all users"
  User.destroy_all
  puts "All users deleted"
  end
  puts "\nStart seeding\n\n"
  puts "Create users"
  dev = User.create!(email: 'yassinou@gmail.com', password: 'azerty', first_name: 'Yassine', last_name: 'Bébou')


profile_picture = URI.open("app/assets/images/avatar_profil.png")


users = User.create!([
  {
    email: "karim@gmail.com",
    password: "karimdu7518",
    first_name: "Karim",
    last_name: "Meghraoui",
    location: "Paris 18"
  },

  {
    email: "olympia@gmail.com",
    password: "yassindu91",
    first_name: "Olympia",
    last_name: "Beaulac",
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

  {
    email: "edouard@gmail.com",
    password: "azertys",
    first_name: "Édouard ",
    last_name: "Moreau",
    location: "Saint-Martin"
  },

  {
    email: "finine@gmail.com",
    password: "alexander",
    first_name: "Fifine",
    last_name: "Thériault",
    location: "Créteil"
  },

  {
    email: "saindon@gmail.com",
    password: "alexander",
    first_name: "Joséphine",
    last_name: "Saindon",
    location: "Nanterre"
  },

  {
    email: "guillaume@gmail.com",
    password: "alexander",
    first_name: "Guillaume",
    last_name: "D'Aoust",
    location: "Paris"
  },

  {
    email: "catherine@gmail.com",
    password: "alexander",
    first_name: "Catherine",
    last_name: "Blais",
    location: "Paris"
  },

  {
    email: "julie@gmail.com",
    password: "alexander",
    first_name: "Julie",
    last_name: "Desnoyers",
    location: "Paris"
  },

  {
    email: "sennet@gmail.com",
    password: "alexander",
    first_name: "Sennet",
    last_name: "Marleau",
    location: "Paris"
  },

  {
    email: "somerville@gmail.com",
    password: "alexander",
    first_name: "Somerville",
    last_name: "Gousse",
    location: "Paris"
  },

  {
    email: "eloise@gmail.com",
    password: "alexander",
    first_name: "Eloise ",
    last_name: "Martel",
    location: "Paris"
  },

  {
    email: "dexter@gmail.com",
    password: "alexander",
    first_name: "Dexter",
    last_name: "Mailly",
    location: "Paris"
  },
])

puts "Users created"
User.excluding(dev).each do |user|
Chatroom.create!(first_user: dev, second_user: user)
puts "Chatroom for #{dev.full_name} & #{user.full_name} created"
end
puts "\nSeeding finished"

dogs = Dog.create!([
  {
    user: users[0],
    name: "Chowy",
    gender: "Female",
    age: "10",
    race: "Chow-chow",
    height: "20cm",
    address: "Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[1],
    name: "Bull",
    gender: "Male",
    age: "13",
    race: "Bulldog",
    height: "10cm",
    address: "Marseille",
    description: "Mon chien est très gentil"
  },

  {
    user: users[2],
    name: "Hachikō",
    gender: "Male",
    age: "10",
    race: "Akita Inu",
    height: "25cm",
    address: "Nanterre",
    description: "Mon chien Hachikō est très fidèle, il m'attend toujours devant la gare ! "
  },

  {
    user: users[3],
    name: "Croky",
    gender: "Female",
    age: "8",
    race: "Golden Retriver",
    height: "20cm",
    address: "Evry",
    description: "Oui."
  },

  {
    user: users[4],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "Nanterre",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[5],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[6],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[7],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[8],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[9],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[10],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[11],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[12],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[13],
    name: "Loki",
    gender: "Female",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[14],
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

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[5].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[6].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[7].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[8].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[9].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[10].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[11].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[12].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[13].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img2.storyblok.com/f/83829/1200x628/246b8b64fc/esperance-vie-chihuahua.jpg")
dogs[14].photos.attach(io: file, filename: "nes.png", content_type: "image/png")
