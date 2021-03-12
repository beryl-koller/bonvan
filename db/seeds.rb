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

user = User.create!(first_name: "georges", last_name:"clooney", email: "gc@nespresso.com", password: "password")
user2 = User.create!(first_name: "christian", last_name:"dupond", email: "cd@nespresso.com", password: "password")
user3 = User.create!(first_name: "benjamin", last_name:"surpe", email: "bs@nespresso.com", password: "password")
user4 = User.create!(first_name: "claire", last_name:"dubois", email: "fh@nespresso.com", password: "password")
user5 = User.create!(first_name: "diana", last_name:"cindo", email: "dc@nespresso.com", password: "password")

puts "Creating vans..."
file = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528411/Bonvan/Van%20seed%20light/caleb-george-iVXfOilGYHA-unsplash_1_b6e8p9.jpg')
La_Belle_de_nuit = Van.new(user: user, brand: "La belle de Nuit", model: "Renault Trafic", passengers: 5, description:"Mon van Renault Trafic est un excellent choix si tu souhaites voyager dans un van moderne, spacieux et luxueux. Il dispose de 4 couchages: 2 dans le toit relevable et 2 en bas. Il dispose d'une petite cuisine aménagée qui sera parfaite pour préparer de bons petits repas en fin de journée une fois que vous aurez trouvé un spot idyllique pour passer votre nuit dans la nature. Il dispose également d'une petite douche à l'arrière, d'un système de navigation intégré, d'une caméra de recul pour simplifier vos manœuvres, ainsi que d'un régulateur automatique.", location: "Marseille", price_per_night: 156)
La_Belle_de_nuit.photos.attach(io: file, filename: 'nes', content_type: 'image/jpg')

file1 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528407/Bonvan/Van%20seed%20light/ingo-doerrie-Fkwj-xk6yck-unsplash_2_pzqnat.jpg')
La_Campagnarde = Van.new(user: user2, brand: "La Campagnarde", model: "Fiat Ducato", passengers: 4, description:"Mon van aménagé Fiat Ducato avec toit relevable vous offrira un voyage confortable avec beaucoup d'espace et de rangements. Le fourgon aménagé à l'arrière du véhicule peut accueillir facilement 4 personnes et il y a également une possibilité de deux couchages supplémentaires au niveau du toit relevable. Nous mettons à disposition des draps et des serviettes propres afin de vous permettre de voyager le plus légèrement possible !", location: "Paris", price_per_night: 203)
La_Campagnarde.photos.attach(io: file1, filename: 'img1', content_type: 'image/jpg')

file2 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528406/Bonvan/Van%20seed%20light/guillaume-issaly-t8p32u7xWA0-unsplash_hcbgwb.jpg')
La_Caravane_des_alpages = Van.new(user: user3, brand: "La caravane des alpages", model: "Mercedes Sprinter", passengers: 5, description:"Nous avons il y a 5 ans aménagé notre van mercedes sprinter avec un intérieur sophistiqué et confortable pour voyager et dormir dedans. Un petit coin cuisine est intégré avec une gazinière à 2 brûleurs, un réservoir à eau et sa glacière de 42L. En couples ou entre amis, ce véhicule fera que des heureux!", location: "Nice", price_per_night: 175)
La_Caravane_des_alpages.photos.attach(io: file2, filename: 'img2', content_type: 'image/jpg')

file3 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528402/Bonvan/Van%20seed%20light/fachy-marin-p_ILi6tlMwM-unsplash_pupqk6.jpg')
La_hulotte = Van.new(user: user4, brand: "La hulotte", model: "Volvo XM5", passengers: 6, description:"Dans notre Volvo XM5 une spacieuse cuisine à l'arrière du véhicule vous permettra de cuisiner dans le plus grand des conforts en plein milieu de la nature! Grâce à son toit relevable, vous pouvez rester debout à l'intérieur du véhicule et tenir à plusieurs personnes si jamais la météo n'est pas des votre!  Les deux lits sont également très vite installés et désinstallés pour vous permettre de reprendre rapidement la route! ", location:"Montpellier", price_per_night:134)
La_hulotte.photos.attach(io: file3, filename: 'img3', content_type: 'image/jpg')

file4 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528425/Bonvan/Van%20seed%20light/umanoide-l_Du81Tt9To-unsplash_1_fibpc6.jpg')
Le_refuge_du_trappeur = Van.new(user: user5, brand: "Le refuge du trappeur", model: "Nissan Akito", passengers: 3 , description:"Notre Nissan Akito a été tout aménagé par nos propres soins avec un petit lit de deux places à l'arrière, une petite kitchenette déplaçable , une petite douche à mettre à l'extérieur si vous le souhaitez. L'intérieur a été conçu par mon mari ébéniste, tout en bois afin de vous sentir comme dans un chalet, il ne manque plus que la cheminée mais vous pourrez vous faire un petit feu de camp pour vous sentir à la montagne!",location:"Poitiers", price_per_night:206)
Le_refuge_du_trappeur.photos.attach(io: file4 , filename: 'img4', content_type: 'image/jpg')

file5 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528421/Bonvan/Van%20seed%20light/shayan-izadi-gBxBeKMdUcA-unsplash_iixdr2.jpg')
Le_potager = Van.new(user: user, brand: "Le potager", model: "Citroen Destroyer", passengers: 2, description:"Mon van Citroen Destroyer est un excellent choix si tu souhaites voyager dans un van moderne, spacieux et luxueux. Il dispose de 4 couchages: 2 dans le toit relevable et 2 en bas. Il dispose d'une petite cuisine aménagée qui sera parfaite pour préparer de bons petits repas en fin de journée une fois que vous aurez trouvé un spot idyllique pour passer votre nuit dans la nature. Il dispose également d'une petite douche à l'arrière, d'un système de navigation intégré, d'une caméra de recul pour simplifier vos manœuvres, ainsi que d'un régulateur automatique.", location:"Orléans", price_per_night: 123)
Le_potager.photos.attach(io: file5, filename: 'img5', content_type: 'image/jpg')

file6 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528424/Bonvan/Van%20seed%20light/tyler-nix-6mze64HRU2Q-unsplash_1_p05oj7.jpg')
Le_van_du_hobbit = Van.new(user: user2, brand: "Le van du Hobbit", model: "Hummer ND4", passengers: 3, description:"Ma Hummer ND4 avec toit relevable vous offrira un voyage confortable avec beaucoup d'espace et de rangements. Le fourgon aménagé à l'arrière du véhicule peut accueillir facilement 4 personnes et il y a également une possibilité de deux couchages supplémentaires au niveau du toit relevable. Nous mettons à disposition des draps et des serviettes propres afin de vous permettre de voyager le plus légèrement possible !", location:"Nantes", price_per_night: 190)
Le_van_du_hobbit.photos.attach(io: file6, filename: 'img6', content_type: 'image/jpg')

file7 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528422/Bonvan/Van%20seed%20light/thimo-pedersen-r0_On-3qVgM-unsplash_vlo6vh.jpg')
La_bucheronne = Van.new(user: user3, brand: "La bucheronne", model: "HymerCar 540", passengers: 4, description:"Mon van HymerCar 540 avec toit relevable vous offrira un voyage confortable avec beaucoup d'espace et de rangements. Le fourgon aménagé à l'arrière du véhicule peut accueillir facilement 4 personnes et il y a également une possibilité de deux couchages supplémentaires au niveau du toit relevable. Nous mettons à disposition des draps et des serviettes propres afin de vous permettre de voyager le plus légèrement possible !", location:"Evian", price_per_night:165)
La_bucheronne.photos.attach(io: file7, filename: 'img7', content_type: 'image/jpg')

file8 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528420/Bonvan/Van%20seed%20light/jorgen-hendriksen-H1PmnlfcUVU-unsplash_vtx3p4.jpg')
Terra_Nova= Van.new(user: user4, brand: "Terra Nova", model: "VanTourer XS", passengers: 5 ,description:"Nous avons il y a 5 ans aménagé notre VanTourer XS avec un intérieur sophistiqué et confortable pour voyager et dormir dedans. Un petit coin cuisine est intégré avec une gazinière à 2 brûleurs, un réservoir à eau et sa glacière de 42L. En couples ou entre amis, ce véhicule fera que des heureux!", location:"Toulon", price_per_night:124)
Terra_Nova.photos.attach(io: file8, filename: 'img8', content_type: 'image/jpg')

file9 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528416/Bonvan/Van%20seed%20light/hert-niks-Itx4VlzMyak-unsplash_ubkpph.jpg')
La_cabane_aux_oiseaux= Van.new(user: user5, brand: "La cabane aux oiseaux", model: "KnausBoxstar", passengers: 3, description:"Dans notre KnausBoxstar une spacieuse cuisine à l'arrière du véhicule vous permettra de cuisiner dans le plus grand des conforts en plein milieu de la nature! Grâce à son toit relevable, vous pouvez rester debout à l'intérieur du véhicule et tenir à plusieurs personnes si jamais la météo n'est pas des votre!  Les deux lits sont également très vite installés et désinstallés pour vous permettre de reprendre rapidement la route!", location:"Versailles", price_per_night:265)
La_cabane_aux_oiseaux.photos.attach(io: file9, filename: 'img9', content_type: 'image/jpg')

file10 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528412/Bonvan/Van%20seed%20light/jason-leung-DC5zm4FeBoI-unsplash_vhsnrw.jpg')
Ecolodge= Van.new(user: user, brand: "L'ecolodge", model: "SunlightCliff", passengers: 5, description:"Notre SunlightCliff a été tout aménagé par nos propres soins avec un petit lit de deux places à l'arrière, une petite kitchenette déplaçable , une petite douche à mettre à l'extérieur si vous le souhaitez. L'intérieur a été conçu par mon mari ébéniste, tout en bois afin de vous sentir comme dans un chalet, il ne manque plus que la cheminée mais vous pourrez vous faire un petit feu de camp pour vous sentir à la montagne!", location:"La Ciotat", price_per_night:176)
Ecolodge.photos.attach(io: file10, filename: 'img10', content_type: 'image/jpg')

file11 = URI.open('https://res.cloudinary.com/df0stqosw/image/upload/v1615528411/Bonvan/Van%20seed%20light/gio-bartlett-blkkAupZ34U-unsplash_pwlemw.jpg')
Foudre= Van.new(user: user2, brand: "Le foudre", model: "Benivan 510", passengers: 6, description:"Mon Benivan 510 est un excellent choix si tu souhaites voyager dans un van moderne, spacieux et luxueux. Il dispose de 4 couchages: 2 dans le toit relevable et 2 en bas. Il dispose d'une petite cuisine aménagée qui sera parfaite pour préparer de bons petits repas en fin de journée une fois que vous aurez trouvé un spot idyllique pour passer votre nuit dans la nature. Il dispose également d'une petite douche à l'arrière, d'un système de navigation intégré, d'une caméra de recul pour simplifier vos manœuvres, ainsi que d'un régulateur automatique.", location:"Monaco", price_per_night:189)
Foudre.photos.attach(io: file11, filename: 'img11', content_type: 'image/jpg')

[La_Belle_de_nuit, La_Campagnarde, La_Caravane_des_alpages, La_hulotte,Le_refuge_du_trappeur,Le_potager, Le_van_du_hobbit,
 La_bucheronne,Terra_Nova,La_cabane_aux_oiseaux, Ecolodge, Foudre ].each do |van_instance|
    van_instance.save

  puts "Created #{van_instance.brand} "
  end
  puts "Finished!"


