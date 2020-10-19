class Dish < ActiveRecord::Base
    belongs_to :restaurant
    has_many :dish_tags
    has_many :tags, through: :dish_tags
    validates :name, presence: true
    validates :restaurant, presence: true
    validate :tags, :tag_validator

    private

  def tag_validator
    tag_ids= tags.map{|tag| tag.id}
    if tag_ids.any?{ |e| tag_ids.count(e) > 1 }
        errors.add(:name, "tag already exisits")
    end
  end
    
end