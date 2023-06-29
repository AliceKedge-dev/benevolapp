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

fileasso1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/t_Profile/v1687860070/th-5_e4nn3z.png")
asso1 = Asso.new(nom: "spa", category: "animal", email: "spa@gmail.com", password: "password")
asso1.photo.attach(io: fileasso1, filename: "jeanvaljean", content_type: "image/png")
asso1.save

fileasso2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687879605/production/nyzxt3v9g2qyhps4612onya2n4kh.jpg")
asso2 = Asso.new(nom: "les restaurants du coeur", category: "social", email: "restauducoeur@gmail.com", password: "password")
asso2.photo.attach(io: fileasso2, filename: "jeanvaljean", content_type: "image/png")
asso2.save

fileasso3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687879606/production/2upyp7i2xquly4zlsbc8cq5xgtk6.jpg")
asso3 = Asso.new(nom: "cleanmycalanques", category: "environnement", email: "clean@gmail.com", password: "password")
asso3.photo.attach(io: fileasso3, filename: "jeanvaljean", content_type: "image/png")
asso3.save

puts "creating missions"

filemission1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/chien-cage-refuge-spa-full-12643903_sdmz94.jpg")
mission1 = Mission.new(asso: asso1, date_création: "12/02/2023", nom: "refuge", temps: 2, description: "aide au refuge", localisation: "Quai de Rive Neuve, Marseille", date: "13/06/2023", photo_url: "photo", category: "animal", participants_max: 200, latitude: 43.2922484, longitude: 5.3649312  )
mission1.photo.attach(io: filemission1, filename: "spaasso", content_type: "image/png")
mission1.save

filemission2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860071/Duo-riverain_sdf-femme-trottoir-1_eqq7m1.jpg")
mission2 = Mission.new(asso: asso2, date_création: "12/02/2023", nom: "distribution de nourriture", temps: 3, description: "aide au restos du coeur", localisation: "41 Rue Jobin, Marseille", date: "13/06/2023", photo_url: "photo", category: "social", participants_max: 250, latitude: 43.3094971, longitude: 5.3903643  )
mission2.photo.attach(io: filemission2, filename: "foodasso", content_type: "image/png")
mission2.save

filemission3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/NETTOYAGES_DE_PLAGE_mwetj6.jpg")
mission3 = Mission.new(asso: asso3, date_création: "12/02/2023", nom: "nettoyage plage", temps: 2, description: "plage du prado", localisation: "Plages du Prado, Marseille", date: "13/06/2023", photo_url: "photo", category: "environnemental", participants_max: 50, latitude: 43.25540542602539, longitude: 5.374680519104004  )
mission3.photo.attach(io: filemission3, filename: "cleanasso", content_type: "image/png")
mission3.save

filemission4 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688043497/promenades-chiens_mee7a9.jpg")
mission4 = Mission.new(asso: asso1, date_création: "10/06/2023", nom: "balade de chien", temps: 3, description: "aidez nous a balader nos toutous", localisation: "32 Bd Jard. Zoologique, Marseille", date: "10/06/2023", photo_url: "photo", category: "animal", participants_max: 3, latitude:43.30558, longitude: 5.39744 )
mission4.photo.attach(io: filemission4, filename: "spaasso", content_type: "image/png")
mission4.save

filemission5 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688043743/t%C3%A9l%C3%A9chargement_28_qwuobl.jpg")
mission5 = Mission.new(asso: asso2, date_création: "28/06/2023", nom: "aide aux sans abris", temps: 2, description: "venez avec nous aider les sans abris de marseille", localisation: "Rue Gustave Desplaces, Aix-en-Provence", date: "30/06/2023", photo_url: "photo", category: "social", participants_max: 300, latitude: 43.3139137, longitude: 5.3822743  )
mission5.photo.attach(io: filemission5, filename: "foodasso", content_type: "image/png")
mission5.save

filemission6 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688043928/t%C3%A9l%C3%A9chargement_29_ab6wks.jpg")
mission6 = Mission.new(asso: asso3, date_création: "29/06/2023", nom: "nettoyage de la ville", temps: 3, description: "aidez nous a dépolluer le centre ville", localisation: "Rue Antoine Bourdelle, Marseille", date: "3/07/2023", photo_url: "photo", category: "environnemental", participants_max: 200, latitude: 43.3196019 , longitude: 5.3700485 )
mission6.photo.attach(io: filemission6, filename: "cleanasso", content_type: "image/png")
mission6.save

puts "AMEN"
