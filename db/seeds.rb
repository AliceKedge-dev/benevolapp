# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Message.destroy_all
Mission.destroy_all
Asso.destroy_all
User.destroy_all
Chatroom.destroy_all

puts "creating users"

fileuser1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/t_Profile/v1687535996/production/4rcypmqfdrl15j23r613mopw9wgs.png")
user1 = User.new(email: "jeanvaljean@gmail.com", password: "password", username: "Melissandre")
user1.photo.attach(io: fileuser1, filename: "jeanvaljean", content_type: "image/png")
user1.save

fileuser2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687789552/development/vdxip048gp5xevmp8dotcyxlj3yd.jpg")
user2 = User.new(email: "jeangui@gmail.com", password: "password", username: "jeangui")
user2.photo.attach(io: fileuser2, filename: "jeangui", content_type: "image/png")
user2.save

puts "creating assos"

fileasso1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/t_Profile/v1687860070/th-5_e4nn3z.png")
asso1 = Asso.new(nom: "spa", category: "animal", email: "spa@gmail.com", password: "password")
asso1.photo.attach(io: fileasso1, filename: "jeanvaljean", content_type: "image/png")
asso1.save

fileasso2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688033554/pcvytibnr4cqkkw7r4056eeyyvcx-Profile.jpg_ydibbm.png")
asso2 = Asso.new(nom: "les restaurants du coeur", category: "social", email: "restauducoeur@gmail.com", password: "password")
asso2.photo.attach(io: fileasso2, filename: "jeanvaljean", content_type: "image/png")
asso2.save


fileasso3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688033550/c5hzyp8yzcv0tuujcxx8ycjyzd06-Profile.jpg_fqe3he.png")
asso3 = Asso.new(nom: "cleanmycalanques", category: "environnement", email: "clean@gmail.com", password: "password")
asso3.photo.attach(io: fileasso3, filename: "jeanvaljean", content_type: "image/png")
asso3.save

puts "creating missions"

filemission1 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/chien-cage-refuge-spa-full-12643903_sdmz94.jpg")
mission1 = Mission.new(asso: asso1, date_création: "12/02/2023", nom: "aide au refuge SPA", temps: "2", description: "Venez aider un refuge
  dans ces actions du quotidien,
  passez du temps avec les animaux dans le besoin !
  Vous pourrez pour le nettoyage des box, faire des jeux et balade
  leur donner le bain, nourrir les animaux selon leurs besoins et enfin terminer par une petite séance caresse", localisation: "Quai de Rive Neuve, Marseille", date: "13/06/2023", photo_url: "photo", category: "animal", participants_max: 200, latitude: 43.2922484, longitude: 5.3649312  )
mission1.photo.attach(io: filemission1, filename: "spaasso", content_type: "image/png")
mission1.save!

filemission2 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860071/Duo-riverain_sdf-femme-trottoir-1_eqq7m1.jpg")
mission2 = Mission.new(asso: asso2, date_création: "12/02/2023", nom: "distribution de nourriture", temps: "3", description: " En tant que bénévole, vous serez chargé(e)
d'accueillir les bénéficiaires dans le centre d'accueil des Restos du Cœur et
de les aider lors de la distribution alimentaire.Accueil chaleureux,enregistrement des bénéficiaires,
aide à la distribution alimentaire,tri et rangement sont au programme.", localisation: "41 Rue Jobin, Marseille", date: "13/06/2023", photo_url: "photo", category: "social", participants_max: 250, latitude: 43.3094971, longitude: 5.3903643  )
mission2.photo.attach(io: filemission2, filename: "foodasso", content_type: "image/png")
mission2.save!

filemission3 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1687860070/NETTOYAGES_DE_PLAGE_mwetj6.jpg")
mission3 = Mission.new(asso: asso3, date_création: "12/02/2023", nom: "nettoyage plage", temps: "2", description: "En tant que bénévole au sein de
  l'association CleanMyCalanques, vous pouvez contribuer activement à la
  préservation de ces magnifiques espaces naturels. Vous vous occuperez du netotyage des calanques,
  de sensibiliser les passants et enfin une collecte et un tri des déchets", localisation: "Plages du Prado, Marseille", date: "13/06/2023", photo_url: "photo", category: "environnement", participants_max: 50, latitude: 43.25540542602539, longitude: 5.374680519104004  )
mission3.photo.attach(io: filemission3, filename: "cleanasso", content_type: "image/png")
mission3.save!

filemission4 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688043497/promenades-chiens_mee7a9.jpg")
mission4 = Mission.new(asso: asso1, date_création: "10/06/2023", nom: "balade de chien", temps: "3", description: "En tant que bénévole, vous serez impliqué(e)
dans des actions d'aide à la
balade des chiens et de soins animaliers
au sein de la SPA. Balade des chiens, soins, hygiène et sensibilisation à l'adoption sont au programme de cette mission. Venez les animaux n'attendent que vous!!", localisation: "32 Bd Jard. Zoologique, Marseille", date: "10/06/2023", photo_url: "photo", category: "animal", participants_max: 3, latitude:43.30558, longitude: 5.39744 )
mission4.photo.attach(io: filemission4, filename: "spaasso", content_type: "image/png")
mission4.save!

filemission5 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688043743/t%C3%A9l%C3%A9chargement_28_qwuobl.jpg")
mission5 = Mission.new(asso: asso2, date_création: "28/06/2023", nom: "aide aux sans abris", temps: "2", description: "En tant que bénévole, vous serez
  impliqué(e) dans des actions d'aide
aux sans-abri et de distribution de repas au sein des Restaurants du Cœur. Accueil,écoute, préparation des repas et orientation vers les services
d'aide sont au programme de cette mission. Venez nous avons besoin de vous!!", localisation: "Rue Gustave Desplaces, Aix-en-Provence", date: "30/06/2023", photo_url: "photo", category: "social", participants_max: 300, latitude: 43.3139137, longitude: 5.3822743  )
mission5.photo.attach(io: filemission5, filename: "foodasso", content_type: "image/png")
mission5.save!

filemission6 = URI.open("https://res.cloudinary.com/dkx9xgzon/image/upload/v1688043928/t%C3%A9l%C3%A9chargement_29_ab6wks.jpg")
mission6 = Mission.new(asso: asso3, date_création: "29/06/2023", nom: "nettoyage de la ville", temps: "3", description: "En tant que bénévole, vous serez
impliqué(e) dans des activités
de nettoyage urbain et de sensibilisation à la
préservation de l'environnement en centre-ville. Nettoyage des espaces publics et organisation d'événements avec les
collectivités locales seront au programme. ", localisation: "Rue Antoine Bourdelle, Marseille", date: "3/07/2023", photo_url: "photo", category: "environnement", participants_max: 200, latitude: 43.3196019 , longitude: 5.3700485 )
mission6.photo.attach(io: filemission6, filename: "cleanasso", content_type: "image/png")
mission6.save!


puts "creating chatrooms"
Chatroom.create!(mission: mission1)
Chatroom.create!(mission: mission2)
Chatroom.create!(mission: mission3)
Chatroom.create!(mission: mission4)
Chatroom.create!(mission: mission5)
Chatroom.create!(mission: mission6)


puts "AMENOOOOOOOOOOOOOOOOOOOOOOOOO"
