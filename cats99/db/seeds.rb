# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all


mr_meow = Cat.create(birth_date: "14/07/1995", color: "red", name: "Mr. Meow", sex: "M", description: "Mr. Meow likes to meow a lot")
ricky = Cat.create(birth_date: "11/03/2001", color: "green", name: "Ricky", sex: "M", description: "Ricky likes to play")
ms_meow = Cat.create(birth_date: "30/05/1997", color: "black", name: "Ms. Meow", sex: "F", description: "Ms Meow likes to sing")
