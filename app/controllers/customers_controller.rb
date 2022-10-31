class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
    @items = @customer.items
    binding.pry
    if params(:itemid) != ''
        @customer << item.find(params[:itemid])
    end
  end
end
