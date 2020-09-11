class Restaurant < ActiveRecord::Base
    # attr_accessor :name
    has_many :dishes

    validates :name, presence: true

    def self.mcdonalds
        self.find_by(name: "'McDonalds'")
    end

    def self.tenth
        self.first(10).last
    end

    def self.with_long_names
        self.where('LENGTH(name) > 12')
    end

    def self.max_dishes
    end

    def self.focused
        self.joins(:dishes).having('COUNT(dishes.id) < 5').group(:restaurant_id)
    end

    def large_menu
        self.joins(:dishes).having('COUNT(dishes.id) > 20').group(:restaurant_id)
    end

    def vegetarian
    end

    def name_like(name)
    end

    def name_not_like(name)
    end
end
