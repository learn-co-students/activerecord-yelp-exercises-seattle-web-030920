class Dish < ActiveRecord::Base
    validates :name, presence: true
    validates :restaurant, presence: true

    has_many :dish_tags
    has_many :tags, through: :dish_tags
    belongs_to :restaurant

end 