class Api::CategoriesController < ApplicationController
  def show
    category = Category.find_by(title: params['id'])
    render json: { category: { title: category.title, products: category.products } }
  end
end
