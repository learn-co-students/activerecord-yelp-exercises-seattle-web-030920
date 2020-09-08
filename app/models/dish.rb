class Dish < ActiveRecord::Base
    # attr_accessor :name
    belongs_to :restaurant

    has_many :dish_tags
    has_many :tags, through: :dish_tags

    validates :name, :restaurant, presence: true
    validates_associated :dish_tags
end
