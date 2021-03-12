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
file = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528411/Bonvan/Van%20seed%20light/caleb-george-iVXfOilGYHA-unsplash_1_b6e8p9.jpg')
La_Belle_de_nuit = Van.new(user: user, brand: "La belle de Nuit", model: "Renault Trafic", passengers: 5, description:"voila mon van", location: "Marseille", price_per_night: 156)
La_Belle_de_nuit.photos.attach(io: file, filename: 'img', content_type: 'image/jpg')

file1 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528407/Bonvan/Van%20seed%20light/ingo-doerrie-Fkwj-xk6yck-unsplash_2_pzqnat.jpg')
La_Campagnarde = Van.new(user: user2, brand: "La Campagnarde", model: "Fiat Ducato", passengers: 4, description:"voila mon van", location: "Paris", price_per_night: 203)
La_Campagnarde.photos.attach(io: file1, filename: 'img1', content_type: 'image/jpg')

file2 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528406/Bonvan/Van%20seed%20light/guillaume-issaly-t8p32u7xWA0-unsplash_hcbgwb.jpg')
La_Caravane_des_alpages = Van.new(user: user3, brand: "La caravane des alpages", model: "Mercedes Sprinter", passengers: 5, description:"voila mon van", location: "Nice", price_per_night: 175)
La_Caravane_des_alpages.photos.attach(io: file2, filename: 'img2', content_type: 'image/jpg')

file3 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528402/Bonvan/Van%20seed%20light/fachy-marin-p_ILi6tlMwM-unsplash_pupqk6.jpg')
La_hulotte = Van.new(user: user4, brand: "La hulotte", model: "Volvo XM5", passengers: 6, description:"voila mon van", location:"Montpellier", price_per_night:134)
La_hulotte.photos.attach(io: file3, filename: 'img3', content_type: 'image/jpg')

file4 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528425/Bonvan/Van%20seed%20light/umanoide-l_Du81Tt9To-unsplash_1_fibpc6.jpg')
Le_refuge_du_trappeur = Van.new(user: user5, brand: "Le refuge du trappeur", model: "Nissan Akito", passengers: 3 , description:"voila mon van",location:"Poitiers", price_per_night:206)
Le_refuge_du_trappeur.photos.attach(io: file4 , filename: 'img4', content_type: 'image/jpg')

file5 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528421/Bonvan/Van%20seed%20light/shayan-izadi-gBxBeKMdUcA-unsplash_iixdr2.jpg')
Le_potager = Van.new(user: user, brand: "Le potager", model: "Citroen Destroyer", passengers: 2, description:"voila mon van", location:"Orléans", price_per_night: 123)
Le_potager.photos.attach(io: file5, filename: 'img5', content_type: 'image/jpg')

file6 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528424/Bonvan/Van%20seed%20light/tyler-nix-6mze64HRU2Q-unsplash_1_p05oj7.jpg')
Le_van_du_hobbit = Van.new(user: user2, brand: "Le van du Hobbit", model: "Hummer ND4", passengers: 3, description:"voila mon van", location:"Nantes", price_per_night: 190)
Le_van_du_hobbit.photos.attach(io: file6, filename: 'img6', content_type: 'image/jpg')


file7 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528422/Bonvan/Van%20seed%20light/thimo-pedersen-r0_On-3qVgM-unsplash_vlo6vh.jpg')
La_bucheronne = Van.new(user: user3, brand: "La s/iVXfOilGYHAbûcheronne", model: "HymerCar 540", passengers: 4, description:"voila mon van", location:"Evian", price_per_night:165)
La_bucheronne.photos.attach(io: file7, filename: 'img7', content_type: 'image/jpg')


file8 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528420/Bonvan/Van%20seed%20light/jorgen-hendriksen-H1PmnlfcUVU-unsplash_vtx3p4.jpg')
Terra_Nova= Van.new(user: user4, brand: "Terra Nova", model: "VanTourer XS", passengers: 5 ,description:"voila mon van", location:"Toulon", price_per_night:124)
Terra_Nova.photos.attach(io: file8, filename: 'img8', content_type: 'image/jpg')


file9 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528416/Bonvan/Van%20seed%20light/hert-niks-Itx4VlzMyak-unsplash_ubkpph.jpg')
La_cabane_aux_oiseaux= Van.new(user: user5, brand: "La cabane aux oiseaux", model: "KnausBoxstar", passengers: 3, description:"voila mon van", location:"Versailles", price_per_night:265)
La_cabane_aux_oiseaux.photos.attach(io: file9, filename: 'img9', content_type: 'image/jpg')


file10 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528412/Bonvan/Van%20seed%20light/jason-leung-DC5zm4FeBoI-unsplash_vhsnrw.jpg')
Ecolodge= Van.new(user: user, brand: "L'ecolodge", model: "SunlightCliff", passengers: 5, description:"voila mon van", location:"La Ciotat", price_per_night:176)
Ecolodge.photos.attach(io: file10, filename: 'img10', content_type: 'image/jpg')


file11 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528411/Bonvan/Van%20seed%20light/gio-bartlett-blkkAupZ34U-unsplash_pwlemw.jpg')
Foudre= Van.new(user: user2, brand: "Le foudre", model: "Benivan 510", passengers: 6, description:"voila mon van", location:"Monaco", price_per_night:189)
Foudre.photos.attach(io: file11, filename: 'img11', content_type: 'image/jpg')


[La_Belle_de_nuit, La_Campagnarde, La_Caravane_des_alpages, La_hulotte,Le_refuge_du_trappeur,Le_potager, Le_van_du_hobbit,
 La_bucheronne,Terra_Nova,La_cabane_aux_oiseaux, Ecolodge, Foudre ].each do |van_instance|
    van_instance.save


    puts "Created #{van_instance.brand} "
  end
  puts "Finished!"


 