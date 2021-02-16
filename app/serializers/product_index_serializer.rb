class ProductIndexSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description
end
