class Product < ApplicationRecord
    validates_presence_of :title, :ingredients, :price
end
