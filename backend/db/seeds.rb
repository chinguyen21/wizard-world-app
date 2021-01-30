# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Wizard.destroy_all
WizHouse.destroy_all
Book.destroy_all
Wand.destroy_all

h1 = House.create(name: "Gryffindor", password: "gry2021", password_confirmation: "gry2021", logo: "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/88361/91122/Harry-Potter-Gryffindor-Crest-Official-wall-mounted-cardboard-cutout-buy-now-at-star__95823.1507640354.jpg?c=2?imbypass=on")
h2 = House.create(name: "Hufflepuff", password: "huf2021", password_confirmation: "huf2021", logo: "https://thegarnetmine.com/wp-content/uploads/2020/03/Hufflepuff-House-Crest-737x900.jpg")
h3 = House.create(name: "Slytherin", password: "sly2021", password_confirmation: "sly2021", logo: "https://miro.medium.com/max/346/0*2z3QIFEDIPQ280oT.jpg")
h4 = House.create(name: "Ravenclaw", password: "rav2021", password_confirmation: "rav2021", logo: "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/88363/91130/Harry-Potter-Ravenclaw-Crest-Official-wall-mounted-cardboard-cutout-buy-now-at-star__86173.1507642983.jpg?c=2?imbypass=on")

w1 = Wizard.create(name: "Harry Potter", password: "harry2021", password_confirmation: "harry2021", age: 19, image: "https://api.time.com/wp-content/uploads/2014/07/301386_full1.jpg?w=600&quality=85", blood: "half-blood")
w2 = Wizard.create(name: "Ron Weasley", password: "ron2021", password_confirmation: "ron2021", age: 19, image: "https://uploads.scratch.mit.edu/users/avatars/38862514.png", blood: "pure-blood")
w3 = Wizard.create(name: "Hermione Granger", password: "her2021", password_confirmation: "her2021", age: 20, image: "https://www.brit.co/media-library/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy8yMTU5NjAxMy9vcmlnaW4uanBnIiwiZXhwaXJlc19hdCI6MTY3MTM0NjA2N30.hqgSl-etfARZhVNbypKHl87Xm6e5-dwchybCtW5YQ30/image.jpg?width=600&quality=85", blood: "muggle")
w4 = Wizard.create(name: "Draco Malfoy", password: "dra2021", password_confirmation: "dra2021", age: 18, image: "https://hips.hearstapps.com/cosmouk.cdnds.net/15/08/nrm_1424419881-draco-malfoy-harry-potter.jpg", blood: "pure-blood")

wizhouse1 = WizHouse.create(wizard_id: w1.id, house_id: h1.id)

b1 = Book.create(name: "The Standard Book of Spells, Grade 1", author: "Miranda Goshawk",subject: "Basic spells for first year education", image: "./images/books/b1.png")
b2 = Book.create(name: "One Thousand Magical Herbs and Fungi", author: "Phyllida Spore",subject: "Magical herbs and fungi", image: "./images/books/b2.png")
b4 = Book.create(name: "Voyages with Vampires", author: "Gilderoy Lockhart",subject: "Life experiences of Gilderoy Lockhart", image: "./images/books/b3.png")
b3 = Book.create(name: "Fantastic Beasts and Where to Find Them", author: "Newt Scamander",subject: "Basic spells for first year education", image: "./images/books/b4.png")
b5 = Book.create(name: "The Essential Defence Against the Dark Arts", author: "Arsenius Jigger",subject: "Defence Against the Dark Arts", image: "./images/books/b5.png")
b6 = Book.create(name: "Advanced Potion-Making", author: "Libatius Borage",subject: "Portions", image: "./images/books/b6.png")
b7 = Book.create(name: "Spellman's Syllabary", author: "Rosana Amorim",subject: "Ancient Runes", image: "./images/books/b7.png")
b8 = Book.create(name: "Intermediate Transfiguration", author: "Albus Dumbledore",subject: "Intermediate Transfiguration", image: "./images/books/b8.png")
b9 = Book.create(name: "The Standard Book of Spells, Grade 2", author: "Miranda Goshawk",subject: "Basic spells for second year education", image: "./images/books/b9.png")

w1 = Wand.create(name: "phoenix feather", wood: "holly", length: 11, image: "https://static.wikia.nocookie.net/harrypotter/images/c/ca/HarryPotterWandNN8415.jpg/revision/latest/scale-to-width-down/467?cb=20141208232731")
w2 = Wand.create(name: "dragon heartstring", wood: "vine", length: 9, image: "https://static.wikia.nocookie.net/harrypotter/images/e/ee/Lucius_Malfoy_wand.png/revision/latest/scale-to-width-down/544?cb=20210108150531")
w3 = Wand.create(name: "unicorn tail-hair", wood: "willow", length: 14, image: "https://static.wikia.nocookie.net/harrypotter/images/c/c6/HermioneGrangerWandNN8411.jpg/revision/latest/scale-to-width-down/500?cb=20140602200406")
w4 = Wand.create(name: "unicorn hair", wood: "ash", length: 12, image: "https://static.wikia.nocookie.net/harrypotter/images/4/49/Dumbledore%27s_wand.jpeg/revision/latest/scale-to-width-down/595?cb=20181121041810")
w5 = Wand.create(name: "unicorn", wood: "cherry", length: 13, image: "https://static.wikia.nocookie.net/harrypotter/images/1/13/Lord_Voldemort%27s_wand.jpg/revision/latest/scale-to-width-down/467?cb=20141208232950")