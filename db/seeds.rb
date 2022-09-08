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
    password: "123456",
    first_name: "Merouane",
    last_name: "Masaoudi",
    location: "Marseille"
  },

  {
    email: "ueno@gmail.com",
    password: "123456",
    first_name: "Hidesaburō",
    last_name: "Ueno",
    location: "Tokyo"
  },

  {
    email: "alexandre@gmail.com",
    password: "123456",
    first_name: "Alexandre",
    last_name: "Pépé",
    location: "Paris"
  },

  {
    email: "edouard@gmail.com",
    password: "123456",
    first_name: "Édouard ",
    last_name: "Moreau",
    location: "Saint-Martin"
  },

  {
    email: "finine@gmail.com",
    password: "123456",
    first_name: "Fifine",
    last_name: "Thériault",
    location: "Créteil"
  },

  {
    email: "saindon@gmail.com",
    password: "123456",
    first_name: "Joséphine",
    last_name: "Saindon",
    location: "Nanterre"
  },

  {
    email: "guillaume@gmail.com",
    password: "123456",
    first_name: "Guillaume",
    last_name: "D'Aoust",
    location: "Paris"
  },

  {
    email: "catherine@gmail.com",
    password: "123456",
    first_name: "Catherine",
    last_name: "Blais",
    location: "Paris"
  },

  {
    email: "julie@gmail.com",
    password: "123456",
    first_name: "Julie",
    last_name: "Desnoyers",
    location: "Paris"
  },

  {
    email: "sennet@gmail.com",
    password: "123456",
    first_name: "Sennet",
    last_name: "Marleau",
    location: "Paris"
  },

  {
    email: "somerville@gmail.com",
    password: "123456",
    first_name: "Somerville",
    last_name: "Gousse",
    location: "Paris"
  },

  {
    email: "eloise@gmail.com",
    password: "123456",
    first_name: "Eloise ",
    last_name: "Martel",
    location: "Paris"
  },

  {
    email: "dexter@gmail.com",
    password: "123456",
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
    race: "Chow-Chow",
    height: "50cm",
    address: "Paris 7th",
    description: "My dog is very calm 🌛 and loves to sleep and chill all day long . Don't be afraid send me a DM for a walk ..."
  },

  {
    user: users[1],
    name: "Bull",
    gender: "Male",
    age: "8",
    race: "Bulldog",
    height: "40cm",
    address: "Marseille",
    description: "My dog is very playful and adore to walk at night in Le vieux port ... See yall !"
  },

  {
    user: users[2],
    name: "Hachikō",
    gender: "Male",
    age: "10",
    race: "Akita Inu",
    height: "64cm",
    address: "Nanterre",
    description: "The best dog ever ♥️🐶 ! Come to talk with me to discover more about me :)"
  },

  {
    user: users[3],
    name: "Croky",
    gender: "Female",
    age: "7",
    race: "Golden Retriver",
    height: "61cm",
    address: "Evry",
    description: "I have plenty of stick all around my house it's kinda mess sorry ... 😭"
  },

  {
    user: users[4],
    name: "Loki",
    gender: "Male",
    age: "13",
    race: "Chihuahua",
    height: "16cm",
    address: "Nanterre",
    description: "My dog don't have afraid of big dogs, very talkative dog too ‼️ "
  },

  {
    user: users[5],
    name: "Zeus",
    gender: "Male",
    age: "10",
    race: "Dogue Allemand",
    height: "110cm",
    address: "Paris",
    description: "Very sticky dog, with lot of love to share all around ♥️ "
  },

  {
    user: users[6],
    name: "Canou",
    gender: "Male",
    age: "5",
    race: "Caniche",
    height: "24cm",
    address: "35 Rue Brunel, Paris",
    description: "Very shy at the begining but after a while my dog is craaaaaazy hahaha 💫"
  },

  {
    user: users[7],
    name: "Bucky",
    gender: "Female",
    age: "7",
    race: "Husky",
    height: "45cm",
    address: "24 Rue des Vinaigriers, Paris",
    description: "Love sport and running get prepare with my dog to do intensive workout 🤭"
  },

  {
    user: users[8],
    name: "Vidar",
    gender: "Female",
    age: "9",
    race: "Staffordshire Bull Terrier",
    height: "35cm",
    address: "10 Place Edouard VII, Paris",
    description: "My dog prefer big dogs to play with but always open to other oportunities 😳"
  },

  {
    user: users[9],
    name: "Dookie",
    gender: "Male",
    age: "5",
    race: "Welsh Corgi",
    height: "25cm",
    address: "204 Rue de Charenton, Paris",
    description: "Very friendly and open to new meet 🥰"
  },

  {
    user: users[10],
    name: "Puly",
    gender: "Male",
    age: "10",
    race: "Puli",
    height: "44cm",
    address: "102 Rue de Bercy, Paris",
    description: "Always stone but my dog have so much qualities 😇"
  },

  {
    user: users[11],
    name: "Simba",
    gender: "Female",
    age: "10",
    race: "Caniche Royal Abricot",
    height: "80cm",
    address: "74 Rue Amelot, Paris",
    description: "My dog is always at 100% of her energy 🥵 Never tired .. But me I AM 😤"
  },

  {
    user: users[12],
    name: "Dumble",
    gender: "Male",
    age: "13",
    race: "Griffon Bruxellois",
    height: "28cm",
    address: "16 Villa Gaudelet, Paris",
    description: "He spent the most of his life to travel all around the world he's very open to meet other dogs 👍🏼"
  },

  {
    user: users[13],
    name: "Anna",
    gender: "Female",
    age: "10",
    race: "Samoyède",
    height: "45cm",
    address: "136 Rue de la Pompe, Paris",
    description: "I don't know why but my dog love Frozen ❄️, for the name it's just a coincidence don't worry . She's a sweetheart ⛄️"
  },

  {
    user: users[14],
    name: "Tibo",
    gender: "Female",
    age: "9",
    race: "Shiba Inu",
    height: "28cm",
    address: "4 Rue Crillon, Paris",
    description: "You want a smile on a demand ? Ask my dog, she'll give you her best smiles and woof 🥰"
  },
])


file = URI.open("https://images.unsplash.com/photo-1591300673309-092e8afa699b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dogs[0].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1554254278-4e0a32570ec9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dogs[1].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1618911392268-9fc29c67fc69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGFraXRhJTIwaW51fGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=800&q=60")
dogs[2].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1561572903-ab17e3916acd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z29sZGVuJTIwcmV0cmlldmVyJTIwc3RpY2t8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
dogs[3].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

file = URI.open("https://images.unsplash.com/photo-1563172320-c91f912fb5b8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGNoaWh1YWh1YXxlbnwwfDF8MHx8&auto=format&fit=crop&w=800&q=60")
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

file = URI.open("https://images.unsplash.com/photo-1636291494567-2cde2d6f45d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGFraXRhJTIwaW51fGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=800&q=60")
dogs[14].photos.attach(io: file, filename: "nes.png", content_type: "image/png")

users.each do |user|
  file = URI.open("https://source.unsplash.com/random/?profil")
  user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
end

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1655375912/mkaw4z5yjw3kougbrovu.jpg")
dev.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
