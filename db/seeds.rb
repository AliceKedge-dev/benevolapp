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

fileuser1 = URI.open("jean.jpg")
user1 = User.new(email: "jeanvaljean@gmail.com", password: "password", username: "jeanvaljean")
user1.photo.attach(io: fileuser1, filename: "jeanvaljean", content_type: "image/png")
user1.save

puts "creating assos"

asso1 = Asso.new(nom: "spa", category: "animal", email: "spa@gmail.com", password: "password")
asso1.save

puts "creating missions"

# filemission1 = URI.open("")
mission1 = Mission.new(asso: asso1, date_création: "12/02/2023", nom: "refuge", temps: 2, description: "aide au refuge", localisation: "ici", date: "13/06/2023", photo_url: "photo", category: "animal", participants_max: 200 )
# mission1.photo.attach(io: filemission1, filename: "spa", content_type: "image/png")
mission1.save

puts "AMEN"
