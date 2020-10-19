class Tag < ActiveRecord::Base
    has_many :dish_tags
    has_many :dishes, through: :dish_tags
    validate :name, :name_validator

    private

  def name_validator
    if name == nil || name.empty?
        errors.add(:name, "can't be empty")
    elsif name.split(" ").size > 2
        errors.add(:name, "too many words")
    elsif name.length < 3
        errors.add(:name, "too short")
    end
  end
end