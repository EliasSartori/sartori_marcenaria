class Product < ActiveRecord::Base
    validates_presence_of :description, :quantity, :price
end
