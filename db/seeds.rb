# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

Van.destroy_all
User.destroy_all

#file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
#article = Van.new(brand: 'NES', model: "A great console", passengers: 5, description:"Une charmante cabane dans les bois", location:"Nice", price_per_night: 150)
#article.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user = User.create!(first_name: "georges", last_name:"clooney", email: "gc@nespresso.com", password: "password")
user2 = User.create!(first_name: "christian", last_name:"dupond", email: "cd@nespresso.com", password: "password")
user3 = User.create!(first_name: "benjamin", last_name:"surpe", email: "bs@nespresso.com", password: "password")
user4 = User.create!(first_name: "claire", last_name:"dubois", email: "fh@nespresso.com", password: "password")
user5 = User.create!(first_name: "diana", last_name:"cindo", email: "dc@nespresso.com", password: "password")

puts "Creating restaurants..."
file = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384359/Bonvan/caleb-george-iVXfOilGYHA-unsplash_1_kyyvkr.jpg')
La_Belle_de_nuit = Van.new(user: user, brand: "La belle de Nuit", model: "Renault Trafic", passengers: 5, description:"voila mon van", location: "Marseille", price_per_night: 156)
La_Belle_de_nuit.photos.attach(io: file, filename: 'nes', content_type: 'image/jpg')

file1 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384359/Bonvan/thimo-pedersen-r0_On-3qVgM-unsplash_l4vpsu.jpg')
La_Campagnarde = Van.new(user: user2, brand: "La Campagnarde", model: "Fiat Ducato", passengers: '4', description:"voila mon van", location: "Paris", price_per_night: 203)
La_Campagnarde.photos.attach(io: file1, filename: 'img1', content_type: 'image/jpg')

file2 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384359/Bonvan/tyler-nix-6mze64HRU2Q-unsplash_1_hloqty.jpg')
La_Caravane_des_alpages = Van.new(user: user3, brand: "La caravane des alpages", model: "Mercedes Sprinter", passengers: 5, description:"voila mon van", location: "Nice", price_per_night: 175)
La_Caravane_des_alpages.photos.attach(io: file2, filename: 'img2', content_type: 'image/jpg')

file3 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384359/Bonvan/shayan-izadi-gBxBeKMdUcA-unsplash_bxxuta.jpg')
La_hulotte = Van.new(user: user4, brand: "La hulotte", model: "Volvo XM5", passengers: 6, description:"voila mon van", location:"Montpellier", price_per_night:134)
La_hulotte.photos.attach(io: file3, filename: 'img3', content_type: 'image/jpg')

file4 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384359/Bonvan/jorgen-hendriksen-H1PmnlfcUVU-unsplash_jop3jk.jpg')
Le_refuge_du_trappeur = Van.new(user: user5, brand: "Le refuge du trappeur", model: "Nissan Akito", passengers: 3 , description:"voila mon van",location:"Poitiers", price_per_night:206)
Le_refuge_du_trappeur.photos.attach(io: file4 , filename: 'img4', content_type: 'image/jpg')

file5 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384358/Bonvan/hert-niks-Itx4VlzMyak-unsplash_dsk2qu.jpg')
Le_potager = Van.new(user: user, brand: "Le potager", model: "Citroen Destroyer", passengers: 2, description:"voila mon van", location:"Orléans", price_per_night: 123)
Le_potager.photos.attach(io: file5, filename: 'img5', content_type: 'image/jpg')

file6 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384358/Bonvan/guillaume-issaly-t8p32u7xWA0-unsplash_buwnec.jpg')
Le_van_du_hobbit = Van.new(user: user2, brand: "Le van du Hobbit", model: "Hummer ND4", passengers: 3, description:"voila mon van", location:"Nantes", price_per_night: 190)
Le_van_du_hobbit.photos.attach(io: file6, filename: 'img6', content_type: 'image/jpg')


file7 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384358/Bonvan/gio-bartlett-blkkAupZ34U-unsplash_ft7ncy.jpg')
La_bûcheronne = Van.new(user: user3, brand: "La s/iVXfOilGYHAbûcheronne", model: "HymerCar 540", passengers: 4, description:"voila mon van", location:"Evian", price_per_night:165)
La_bûcheronne.photos.attach(io: file7, filename: 'img7', content_type: 'image/jpg')


file8 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384359/Bonvan/jorgen-hendriksen-H1PmnlfcUVU-unsplash_jop3jk.jpg')
Terra_Nova= Van.new(user: user4, brand: "Terra Nova", model: "VanTourer XS", passengers: 5 ,description:"voila mon van", location:"Toulon", price_per_night:124)
Terra_Nova.photos.attach(io: file8, filename: 'img8', content_type: 'image/jpg')


file9 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384358/Bonvan/hert-niks-Itx4VlzMyak-unsplash_dsk2qu.jpg')
La_cabane_aux_oiseaux= Van.new(user: user5, brand: "La cabane aux oiseaux", model: "KnausBoxstar", passengers: 3, description:"voila mon van", location:"Versailles", price_per_night:265)
La_cabane_aux_oiseaux.photos.attach(io: file9, filename: 'img9', content_type: 'image/jpg')


file10 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384358/Bonvan/guillaume-issaly-t8p32u7xWA0-unsplash_buwnec.jpg')
Ecolodge= Van.new(user: user, brand: "L'ecolodge", model: "SunlightCliff", passengers: 5, description:"voila mon van", location:"La Ciotat", price_per_night:176)
Ecolodge.photos.attach(io: file10, filename: 'img10', content_type: 'image/jpg')


file11 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384359/Bonvan/umanoide-l_Du81Tt9To-unsplash_1_wjbx7p.jpg')
Foudre= Van.new(user: user2, brand: "Le foudre", model: "Benivan 510", passengers: 6, description:"voila mon van", location:"Monaco", price_per_night:189)
Foudre.photos.attach(io: file11, filename: 'img11', content_type: 'image/jpg')



file12 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615384360/Bonvan/ingo-doerrie-Fkwj-xk6yck-unsplash_2_pbw00y.jpg')
Le_pinot_noir= Van.new(user: user3, brand: "Le pinot noir", model: "RoadCar M43", passengers: 4, description:"voila mon van", location:"Bordeaux", price_per_night: 120)
Le_pinot_noir.photos.attach(io: file12, filename: 'img12', content_type: 'image/jpg')

[La_Belle_de_nuit, La_Campagnarde, La_Caravane_des_alpages, La_hulotte,Le_refuge_du_trappeur,Le_potager, Le_van_du_hobbit,
 La_bûcheronne,Terra_Nova,La_cabane_aux_oiseaux, Ecolodge, Foudre ].each do |van_instance|
    van_instance.save


    puts "Created #{van_instance.brand} "
  end
  puts "Finished!"


 