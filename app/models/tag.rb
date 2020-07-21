class Tag < ActiveRecord::Base
    validates :name, presence: true, length: { minimum: 3, maximum: 10 }

    has_many :dish_tags
    has_many :dishes, through: :dish_tags

end 