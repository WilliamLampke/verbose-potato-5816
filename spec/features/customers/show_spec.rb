require 'rails_helper'

RSpec.describe 'Customer Show' do
  it 'shows customers name, list of items (item name, price, and supermarket)' do
    harristeeter = Supermarket.create!(name: 'Harris Teeter', location: 'Charlotte')

    william = Customer.create!(name: 'William')

    chips = Item.create!(name: 'Chips', price: 3, supermarket_id: harristeeter.id)
    soda = Item.create!(name: 'Soda', price: 1, supermarket_id: harristeeter.id)
    cookies = Item.create!(name: 'Cookies', price: 2, supermarket_id: harristeeter.id)

    customeritem1 = CustomerItem.create!(item_id: chips.id, customer_id: william.id)
    customeritem2 = CustomerItem.create!(item_id: soda.id, customer_id: william.id)
    customeritem3 = CustomerItem.create!(item_id: cookies.id, customer_id: william.id)

    visit "/customers/#{william.id}"

    expect(page).to have_content('William')
    expect(page).to have_content('Chips')
    expect(page).to have_content('Soda')
    expect(page).to have_content('Cookies')
    expect(page).to have_content('3')
    expect(page).to have_content('1')
    expect(page).to have_content('2')
    expect(page).to have_content('Harris Teeter')
  end
  it 'has a form to add items to the customer by id ' do
    harristeeter = Supermarket.create!(name: 'Harris Teeter', location: 'Charlotte')

    william = Customer.create!(name: 'William')

    chips = Item.create!(name: 'Chips', price: 3, supermarket_id: harristeeter.id)
    soda = Item.create!(name: 'Soda', price: 1, supermarket_id: harristeeter.id)
    cookies = Item.create!(name: 'Cookies', price: 2, supermarket_id: harristeeter.id)

    customeritem1 = CustomerItem.create!(item_id: chips.id, customer_id: william.id)
    customeritem2 = CustomerItem.create!(item_id: soda.id, customer_id: william.id)
    customeritem3 = CustomerItem.create!(item_id: cookies.id, customer_id: william.id)

    papertowels = Item.create!(name: 'Paper Towels', price: 5, supermarket_id: harristeeter.id)

    visit "/customers/#{william.id}"
    fill_in 'itemid', with: papertowels.id
    click_on('Submit')

    expect(page).to have_content('Paper Towels')
    expect(page).to have_content('5')
  end
end
