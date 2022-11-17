# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
Role.create(salary: 500, character_name: "Rick", movie: mean_girls, actor: lindsay_lohan)
Role.create(salary: 600, character_name: "Harry", movie: spice_world, actor: tina_fey)
Role.create(salary: 700, character_name: "Jane", movie: mean_girls, actor: baby_spice)
Role.create(salary: 800, character_name: "sally", movie: spice_world, actor: ginger_spice)
Role.create(salary: 900, character_name: "Penny", movie: mean_girls, actor: scary_spice)
Role.create(salary: 1000, character_name: "Henry", movie: mean_girls, actor: sporty_spice)
Role.create(salary: 900, character_name: "Jenny", movie: mean_girls, actor: posh_spice)




puts "Seeding done!"