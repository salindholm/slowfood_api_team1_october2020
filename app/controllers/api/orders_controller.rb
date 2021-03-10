class Api::OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    order = current_user.orders.create
    order.order_items.create(product_id: params[:product_id])
    render json: { message: 'The product has successfully been added to your order!', items: order.order_items }
  end
end
