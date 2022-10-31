class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])

    unless params['itemid'].nil?
      CustomerItem.create!(item_id: params['itemid'].to_i, customer_id: @customer.id)
      # @customer << Item.find(params["itemid"].to_i)
    end

    @items = @customer.items
  end
end
