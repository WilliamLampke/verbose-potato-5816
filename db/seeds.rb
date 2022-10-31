# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
harristeeter = Supermarket.create!(name: 'Harris Teeter', location: 'Charlotte')

william = Customer.create!(name: 'William')

chips = Item.create!(name: 'Chips', price: 3, supermarket_id: harristeeter.id)
soda = Item.create!(name: 'Soda', price: 1, supermarket_id: harristeeter.id)
cookies = Item.create!(name: 'Cookies', price: 2, supermarket_id: harristeeter.id)

customeritem1 = CustomerItem.create!(item_id: chips.id, customer_id: william.id)
customeritem2 = CustomerItem.create!(item_id: soda.id, customer_id: william.id)
customeritem3 = CustomerItem.create!(item_id: cookies.id, customer_id: william.id)

papertowels = Item.create!(name: 'Paper Towels', price: 5, supermarket_id: harristeeter.id)