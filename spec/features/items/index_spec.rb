require 'rails_helper'

RSpec.describe 'Items Index' do   
  it 'shows list of items (item name, price, and supermarket) and amount of customers who have bought that item' do
    harristeeter = Supermarket.create!(name: 'Harris Teeter', location: 'Charlotte')

    
    william = Customer.create!(name: 'William')
    david = Customer.create!(name: 'David')

    chips = Item.create!(name: 'Chips', price: 3, supermarket_id: harristeeter.id)
    soda = Item.create!(name: 'Soda', price: 1, supermarket_id: harristeeter.id)
    cookies = Item.create!(name: 'Cookies', price: 2, supermarket_id: harristeeter.id)

    customeritem1 = CustomerItem.create!(item_id: chips.id, customer_id: william.id)
    customeritem2 = CustomerItem.create!(item_id: soda.id, customer_id: william.id)
    customeritem3 = CustomerItem.create!(item_id: cookies.id, customer_id: william.id)

    customeritem4 = CustomerItem.create!(item_id: chips.id, customer_id: david.id)
    customeritem5 = CustomerItem.create!(item_id: soda.id, customer_id: david.id)

    visit "/items"
    expect(page).to have_content("Total Customers: 2")
    expect(page).to have_content("Total Customers: 2")
    expect(page).to have_content("Total Customers: 1")
  end
end