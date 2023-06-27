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

asso2 = Asso.new(nom: "les restaurants du coeur", category: "social", email: "restauducoeur@gmail.com", password: "password")
asso2.save

asso3 = Asso.new(nom: "cleanmycalanques", category: "environnement", email: "clean@gmail.com", password: "password")
asso3.save

puts "creating missions"

filemission1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/th-5_e4nn3z.jpg")
mission1 = Mission.new(asso: asso1, date_création: "12/02/2023", nom: "refuge", temps: 2, description: "aide au refuge", localisation: "Quai de Rive Neuve, Marseille", date: "13/06/2023", photo_url: "photo", category: "animal", participants_max: 200, latitude: 43.2922484, longitude: 5.3649312  )
mission1.photo.attach(io: filemission1, filename: "spaasso", content_type: "image/png")
mission1.save

filemission2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/th-6_njw4kz.jpg")
mission2 = Mission.new(asso: asso2, date_création: "12/02/2023", nom: "distribution de nourriture", temps: 3, description: "aide au restos du coeur", localisation: "41 Rue Jobin, Marseille", date: "13/06/2023", photo_url: "photo", category: "environnement", participants_max: 250, latitude: 43.3094971, longitude: 5.3903643  )
mission2.photo.attach(io: filemission2, filename: "foodasso", content_type: "image/png")
mission2.save

filemission3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/th-7_vkiptq.jpg")
mission3 = Mission.new(asso: asso3, date_création: "12/02/2023", nom: "nettoyage plage", temps: 2, description: "plage du prado", localisation: "Plages du Prado, Marseille", date: "13/06/2023", photo_url: "photo", category: "social", participants_max: 50, latitude: 43.25540542602539, longitude: 5.374680519104004  )
mission3.photo.attach(io: filemission3, filename: "cleanasso", content_type: "image/png")
mission3.save


puts "AMEN"
