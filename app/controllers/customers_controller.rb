class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @items = @customer.items
    binding.pry
    if params["itemid"] != nil
        # @customer << Item.find(params["itemid"])
    end
  end
end
