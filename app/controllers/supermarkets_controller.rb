class SupermarketsController < ApplicationController
    def show
        @supermarket = Supermarket.find(params[:id])
        @items = @supermarket.items
    end
end