# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

goc = Series.create!(name: "Game of Chairs", air_date:'2011-04-11', creator:"George R. R. Martin, David Benioff, D. B. Weiss, Bryan Cogman, Vanessa Taylor, Jane Espenson, Dave Hill", synopsis:"Sur le continent de Westeros, le roi Robert Baratheon gouverne le Royaume des Sept Couronnes depuis plus de dix-sept ans, à la suite de la rébellion qu'il a menée contre le « roi fou » Aerys II Targaryen. Jon Arryn, époux de la sœur de Lady Catelyn Stark, Lady Arryn, son guide et principal conseiller, vient de décéder, et le roi part alors dans le nord du royaume demander à son vieil ami Eddard « Ned » Stark de remplacer leur regretté mentor au poste de Main du roi. Ned, seigneur suzerain du nord depuis Winterfell et de la maison Stark, est peu désireux de quitter ses terres. Mais il accepte à contre-cœur de partir pour la capitale Port-Réal avec ses deux filles, Sansa et Arya. Juste avant leur départ pour le sud, Bran, l'un des jeunes fils d'Eddard, est poussé de l'une des tours de Winterfell après avoir été témoin de la liaison incestueuse de la reine Cersei Baratheon et son frère jumeau, Jaime Lannister. Leur frère, Tyrion Lannister, surnommé « le gnome », est alors accusé du crime par Lady Catelyn Stark", picture:)
trd = Series.create!(name: "The Runnin' Dead", air_date:'2010-10-31', creator:"Frank Darabont - Robert Kirkman", synopsis:"L'histoire suit le personnage de Rick Grimes (interprété par Andrew Lincoln), adjoint du shérif du comté de Kings (en Géorgie) qui se réveille d'un coma de plusieurs semaines pour découvrir que la population a été ravagée par une épidémie post-apocalyptique inconnue qui transforme les êtres humains en morts-vivants, appelés « rôdeurs ». Après avoir retrouvé sa famille, il devient très vite le leader d'un groupe de rescapés d'Atlanta. Ils seront amenés à devoir survivre dans un monde post-apocalyptique face à des rôdeurs et d'autres groupes de survivants, pour certains plus dangereux encore que les rôdeurs eux-mêmes. Ensemble, ils vont devoir tant bien que mal faire face à ce nouveau monde devenu méconnaissable, à travers leur périple dans le Sud profond des États-Unis.", picture:)
bg = Series.create!(name: "Breaking Good", air_date:'2008-01-20', creator:"Vince Gilligan", synopsis:"Walter « Walt » White est professeur de chimie dans un lycée, et vit avec son fils handicapé et sa femme enceinte à Albuquerque, au Nouveau-Mexique. Lorsqu'on lui diagnostique, peu après qu'il a fêté ses 50 ans, un cancer du poumon en phase terminale avec une espérance de vie estimée à deux ans, tout s'effondre pour lui. Il décide alors de mettre en place un laboratoire et un trafic de méthamphétamine pour assurer un avenir financier confortable à sa famille après sa mort, en s'associant à Jesse Pinkman, un de ses anciens élèves devenu petit trafiquant.", picture:)


Seasons.create!(number: 1, air_date: '2011-04-11', series_id: goc.id)
Seasons.create!(number: 2, air_date: '2012-04-11', series_id: goc.id)
Seasons.create!(number: 3, air_date: '2013-04-11', series_id: goc.id)
Seasons.create!(number: 4, air_date: '2014-04-11', series_id: goc.id)

puts "#{City.count} villes ajoutées"
puts "#{Restaurant.count} restaurants ajoutés"
