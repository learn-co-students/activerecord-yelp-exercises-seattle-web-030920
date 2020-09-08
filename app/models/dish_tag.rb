class DishTag < ActiveRecord::Base
    # attr_accessor :name
    belongs_to :dish
    belongs_to :tag

    validates :tag_id, uniqueness: { scope: :dish_id }
end
