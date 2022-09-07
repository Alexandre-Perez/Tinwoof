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
    gender: "Male",
    age: "13",
    race: "Chihuahua",
    height: "20cm",
    address: "Nanterre",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[5],
    name: "Doguy",
    gender: "Male",
    age: "7",
    race: "Dogue allemand",
    height: "25cm",
    address: "145 Rue Saint-Charles, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[6],
    name: "Canou",
    gender: "Male",
    age: "5",
    race: "Caniche",
    height: "20cm",
    address: "35 Rue Brunel, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[7],
    name: "Bucky",
    gender: "Female",
    age: "7",
    race: "Husky ",
    height: "10cm",
    address: "24 Rue des Vinaigriers, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[8],
    name: "Vidar",
    gender: "Female",
    age: "9",
    race: "Staffordshire bull terrier",
    height: "20cm",
    address: "10 Place Edouard VII, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[9],
    name: "Ein",
    gender: "Female",
    age: "3",
    race: "Corgi",
    height: "17cm",
    address: "204 Rue de Charenton, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[10],
    name: "Puly",
    gender: "Male",
    age: "2",
    race: "Puli",
    height: "15cm",
    address: "102 Rue de Bercy, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[11],
    name: "Simba",
    gender: "Female",
    age: "10",
    race: "Caniche royal abricot",
    height: "80cm",
    address: "74 Rue Amelot, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[12],
    name: "Dumble",
    gender: "Female",
    age: "13",
    race: "Griffon bruxellois",
    height: "10cm",
    address: "16 Villa Gaudelet, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[13],
    name: "Glacy",
    gender: "Male",
    age: "13",
    race: "Samoyède",
    height: "85cm",
    address: "136 Rue de la Pompe, Paris",
    description: "Mon chien haha trop bien lol"
  },

  {
    user: users[14],
    name: "Tibo",
    gender: "Female",
    age: "13",
    race: "Shiba Inu",
    height: "20cm",
    address: "4 Rue Crillon, Paris",
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

file = URI.open("https://images.unsplash.com/photo-1533764625214-b97671494f23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dogs[5].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1622923169587-d2ebef5cf300?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dogs[6].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1590419690008-905895e8fe0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80")
dogs[7].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1648979650858-753770ba9405?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dogs[8].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1634635880938-d81e973bcd6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80")
dogs[9].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://media.istockphoto.com/photos/pool-picture-id496563393?k=20&m=496563393&s=612x612&w=0&h=4BRyAt-I7MNb24tCihkmPu2o63ZxmoW81HLdoDIBF2k=")
dogs[10].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://i.pinimg.com/originals/cf/d9/be/cfd9be844721d0636a5d3f67d78baed5.jpg")
dogs[11].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://img.pixers.pics/pho_wat(s3:700/FO/53/70/59/13/700_FO53705913_4c28b81fee86b35cc5b6066dcc54ba7c.jpg,467,700,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,247,650,jpg)/wall-murals-brussels-griffon-dog-portrait.jpg.jpg")
dogs[12].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1596492784531-6e6eb5ea9993?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dogs[13].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1609114450169-f0656f84799e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80")
dogs[14].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

users.each do |user|
  file = URI.open("https://source.unsplash.com/random/?profil")
  user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1655375912/mkaw4z5yjw3kougbrovu.jpg")
dev.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
