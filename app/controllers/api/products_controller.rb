class Api::ProductsController < ApplicationController
  def index
    products = Product.all
    binding.pry
  end
end
