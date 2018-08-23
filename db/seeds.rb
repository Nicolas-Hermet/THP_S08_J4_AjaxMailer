# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Email.all.destroy_all

Email.create(object: 'Enlarge your penis', body: "Avoue : c'est là que t'as cliqué en premier non ?")
Email.create(object: 'Doner Kebab fidelity card', body: 'Wesh ma gueule')
Email.create(object: 'Your trip to biaritz', body: "T'es une rock start ou pas une rock star ?")
Email.create(object: 'Un autre spam', body: 'blabla')
Email.create(object: 'THP : bientôt la fin', body: 'Hey ouais ça passe vite !')
Email.create(object: 'Rappel moi !', body: "J'ai rien a te dire mais j'aime bien faire chier")