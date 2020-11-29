# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

meat = Category.create({ title: 'Meat' })
veggie = Category.create({ title: 'Veggie' })
glutenfree = Category.create({ title: 'GlutenFree' })
Product.create([
  {
    title: "Hawaii",
    ingredients: "tomato sauce, cheese, ham and pineapple",
    price: 179,
    category: meat
  },
  {
    title: "Margherita",
    ingredients: "tomato sauce and cheese",
    price: 129,
    category: veggie
  },
  {
    title: "Vesuvio",
    ingredients: "tomato sauce, cheese and ham",
    price: 139,
    category: glutenfree
  }
])