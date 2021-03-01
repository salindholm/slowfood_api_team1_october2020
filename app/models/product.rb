class Product < ApplicationRecord
  validates_presence_of :name, :description, :price
  has_many :order_items
end
