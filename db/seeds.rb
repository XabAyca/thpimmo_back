p "*" * 50
p " " * 50
p "                 STARTING SEEDING                 "
p " " * 50
p "*" * 50

p "Destroy curent data..."

p "Destroying User... #{User.count} "
User.destroy_all

p "Destroying Category... #{Category.count} "
Category.destroy_all

p "Destroying Location... #{Location.count} "
Location.destroy_all

p "Destroying Property... #{Property.count} "
Property.destroy_all

p "-" * 50
p "-" * 50


users = []
categories = ['maison', 'appartement', 'villa', 'chalet', "péniche"]
properties = []
users_number = 10
properties_number = 15

p "USERS"
users_number.times do |i|
  users << User.create(email: Faker::Internet.email, password: "azerty1234", password_confirmation: "azerty1234")
  system("clear")
  puts "#{i+1} users created"
  puts "|"+("█"*(i+1))+(" "*((users_number-1)-i))+"|"
end

p "CATEGORIES"
categories.each_with_index do |category,i|
  Category.create(name:category)
  system("clear")
  puts "#{i+1} category created"
  puts "|"+("█"*(i+1))+(" "*((categories.length-1)-i))+"|"
end
p "LOCATIONS"
10.times do |i|
  Location.create(name: Faker::Games::Pokemon.location)
  system("clear")
  puts "#{i+1} locatation created"
  puts "|"+("█"*(i+1))+(" "*((10-1)-i))+"|"
end

p "PROPERTIES"
  Property.create(title: "La Cabane", price: rand(500..2000), description: "Nichée dans un cadre de verdure, cette petite cabane de charme, tout en bois et sur pilotis, sera le refuge idéal pour vous retrouver en amoureux, été comme hiver. Vous l'apprécierez pour son calme, sa délicieuse odeur de bois, sa luminosité. La cabane est parfaite pour les couples mais ravira aussi les voyageurs en solo et même les teletravailleurs en quête de calme.",
                photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(4))
  system("clear")
  puts "#{0+1} property created"
  puts "|"+("█"*(0+1))+(" "*((properties_number-1)-0))+"|"

  Property.create(title: "Séjour atypique à bord de notre péniche La Belle Aimée", price: rand(500..2000), description: "Ancien navire vraquier, de 1962, transportant des céréales, la Péniche La Belle Aimée est désormais notre lieu de résidence à l'année. Elle est également, le reflet du choix d'un mode de vie original, tourné vers la nature, tout en bénéficiant des avantages de la ville.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(5))
  system("clear")
  puts "#{1+1} property created"
  puts "|"+("█"*(1+1))+(" "*((properties_number-1)-1))+"|"

  Property.create(title: "Logement insolite et cosy sur une péniche !", price: rand(500..2000), description: "Idéalement situé sur la Saône dans le quartier Confluence ce logement est incroyable ! Bercé par le clapotis de l'eau et en sécurité sur la péniche Myrte, vous dormirez dans les quartiers du Capitaine...",
                photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(5))
  system("clear")
  puts "#{2+1} property created"
  puts "|"+("█"*(2+1))+(" "*((properties_number-1)-2))+"|"

  Property.create(title: "Le Phare-Deauville", price: rand(500..2000), description: "Logement avec vue exceptionnelle sur la mer, et Les Planches de Deauville, à juste 500 mètres. Location de vacances au calme absolu avec un environnement préservé",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(1))
  system("clear")
  puts "#{3+1} property created"
  puts "|"+("█"*(3+1))+(" "*((properties_number-1)-3))+"|"

  Property.create(title: "Duplex cosy hyper centre", price: rand(500..2000), description: "Situé dans une rue calme au pied de la rue principale et commerçante, ce logement saura vous séduire avec son marché aux poissons le samedi matin. Proche de toutes commodités, il ne vous faudra que 10 minutes pour rejoindre la gare, et 5 pour vous retrouver les pieds dans l'eau",
                photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(1))
  system("clear")
  puts "#{4+1} property created"
  puts "|"+("█"*(4+1))+(" "*((properties_number-1)-4))+"|"

  Property.create(title: "La Parenthèse", price: rand(500..2000), description: "La Parenthèse vous invite à faire une escale en plein centre de Fougères, à seulement 200m de son célèbre château, l'une des plus grandes forteresses d'Europe. Le logement est situé à 5 min à pied de la carrière du Rocher Coupé, où vous pourrez vous balader en profitant d'une belle vue sur la ville et le lac. L'hébergement est à proximité de tous commerces, bars, restaurants...",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(2))
  system("clear")
  puts "#{5+1} property created"
  puts "|"+("█"*(5+1))+(" "*((properties_number-1)-5))+"|"


  Property.create(title: "La Parenthèse", price: rand(500..2000), description: "Confortable appartement de 50m2 dans une bâtisse Anglo-Normande du début XXe siècle. Situé au 1er étage (sans ascenseur) de la résidence vous y découvrirez une vue vertigineuse sur la plage de Pourville-sur-mer et les falaises de Varengeville-sur-mer. La décoration est soignée et entretenue.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(2))
  system("clear")
  puts "#{6+1} property created"
  puts "|"+("█"*(6+1))+(" "*((properties_number-1)-6))+"|"

  Property.create(title: "Gite appartement independant", price: rand(500..2000), description: "Petit gite indépendant en briques, silex et torchis. La propriété se situe au centre d'un petit village typique du pays d'auge. Un restaurant et une boulangerie sont accessibles a 5minutes à pied. Le logement se situe au cœur d'une ancienne cidrerie du 18eme qui longe la rivière de la Calonne. Vous bénéficierez d'un espace exterieur privatif et pourrez profiter du jardin et potager. Poules, chats, abeilles se partagent le domaine",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(2))
  system("clear")
  puts "#{7+1} property created"
  puts "|"+("█"*(7+1))+(" "*((properties_number-1)-7))+"|"

  Property.create(title: "L’appart de Bel Air", price: rand(500..2000), description: "Petit nid douillet, très confortable. Une chambre, un salon salle à manger cuisine toute équipée. Une petite salle de bain fonctionnelle... Parfait pour un séjour entre lac et montagne.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(2))
  system("clear")
  puts "#{8+1} property created"
  puts "|"+("█"*(8+1))+(" "*((properties_number-1)-8))+"|"

  Property.create(title: "Studio spacieux avec chambre en mezzanine", price: rand(500..2000), description: "Charmant studio en duplex tout équipé et tout confort ou comment mêler l'utile à l'agéable ! Situé dans un faubourg de Montpellier, Figuerolles propose de nombreux commerces de proximité dans un quartier vivant à moins de 15 minutes à pied de l'hyper-centre piéton de la ville.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(2))
  system("clear")
  puts "#{9+1} property created"
  puts "|"+("█"*(9+1))+(" "*((properties_number-1)-9))+"|"

  Property.create(title: "Le Chateau d'Avignon", price: rand(500..2000), description: "Une villa de luxe vous attend dans une partie exclusive de la Provence. Construit au XIVe siècle, le Château d'Avignon servait autrefois de château pour les évêques qui attendaient une audience avec les papes d'Avignon. Ces dernières années, il a été restauré avec goût pour retrouver sa splendeur d'origine, tout en y ajoutant des équipements modernes.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(3))
  system("clear")
  puts "#{10+1} property created"
  puts "|"+("█"*(10+1))+(" "*((properties_number-1)-10))+"|"

  Property.create(title: "Villa Les Capitaines", price: rand(500..2000), description: "Ce remarquable domaine au sommet d'une colline est niché dans la campagne pittoresque et offre une vue spectaculaire sur les montagnes. Une large entrée vous invite à pénétrer à l'intérieur où des murs en pierre apparente, des plafonds voûtés et une lucarne en vitrail attirent votre attention. Prenez un livre dans la bibliothèque, rassemblez-vous autour de la cheminée ancienne ou dégustez une délicieuse planche de charcuterie à la table en plein air.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(3))
  system("clear")
  puts "#{11+1} property created"
  puts "|"+("█"*(11+1))+(" "*((properties_number-1)-11))+"|"

  Property.create(title: "Villa Noves", price: rand(500..2000), description: "Profitez à la fois du charme provençal traditionnel et du confort d'une villa récemment rénovée à la Villa Noves. Bien que ses murs en pierre et son toit en tuiles évoquent l'histoire de la région d'Avignon, cette propriété de luxe dispose d'équipements modernes, tels qu'un cinéma maison, une piscine et la climatisation. Invitez jusqu'à quatorze amis et membres de votre famille à vous rejoindre dans cette location de vacances de sept chambres au cœur de la Provence.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(3))
  system("clear")
  puts "#{12+1} property created"
  puts "|"+("█"*(12+1))+(" "*((properties_number-1)-12))+"|"

  Property.create(title: "Appartement d'artiste sous les toits", price: rand(500..2000), description: "La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(2))
  system("clear")
  puts "#{13+1} property created"
  puts "|"+("█"*(13+1))+(" "*((properties_number-1)-13))+"|"

  Property.create(title: "Le Cosy", price: rand(500..2000), description: "Venez découvrir les charmes de Bordeaux dans notre appartement au coeur du centre historique dans une ambiance cosy. Fonctionnel et agréable , vous y passerez un séjour inoubliable!! A moins d'une minute à pieds de la Porte Cailhau ,à 300 mètres de la place de la Bourse. Ce quartier est un choix idéal pour les voyageurs qui s'intéressent à ces thèmes: nourritures, le shopping, visite et le vin.",
  photo: "https://picsum.photos/300/300", user: User.all.sample, location: Location.all.sample, category: Category.find(2))
  system("clear")
  puts "#{14+1} property created"
  puts "|"+("█"*(14+1))+(" "*((properties_number-1)-14))+"|"

puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"
