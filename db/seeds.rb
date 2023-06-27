# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
User.destroy_all
Asso.destroy_all
Mission.destroy_all

puts "creating users"

fileuser1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/t_Profile/v1687535996/production/4rcypmqfdrl15j23r613mopw9wgs.png")
user1 = User.new(email: "jeanvaljean@gmail.com", password: "password", username: "jeanvaljean")
user1.photo.attach(io: fileuser1, filename: "jeanvaljean", content_type: "image/png")
user1.save

puts "creating assos"

asso1 = Asso.new(nom: "spa", category: "animal", email: "spa@gmail.com", password: "password")
asso1.save

asso2 = Asso.new(nom: "Restaurants du Coeur", category: "Humain", email: "coeur@gmail.com", password: "password")
asso2.save

puts "creating missions"

filemission1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/chien-cage-refuge-spa-full-12643903_sdmz94.jpg")
mission1 = Mission.new(asso: asso1, date_création: "12/02/2023", nom: "Aide à la SPA", temps: "2", description: "aide au refuge", localisation: "Castellane", date: "13/06/2023", photo_url: "photo", category: "animal", participants_max: 200 )
mission1.photo.attach(io: filemission1, filename: "spa", content_type: "image/png")
mission1.save

filemission2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860071/Duo-riverain_sdf-femme-trottoir-1_eqq7m1.jpg")
mission2 = Mission.new(asso: asso2, date_création: "12/02/2023", nom: "Maraude", temps: "3", description: "aide aux sans-abris", localisation: "Noailles", date: "13/06/2023", photo_url: "photo", category: "social", participants_max: 40 )
mission2.photo.attach(io: filemission2, filename: "spa", content_type: "image/png")
mission2.save

puts "AMEN"
