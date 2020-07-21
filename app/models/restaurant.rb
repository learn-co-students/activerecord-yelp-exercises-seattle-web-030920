class Restaurant < ActiveRecord::Base
validates :name, presence: true
has_many :restaurant_dishes
has_many :dishes
end 