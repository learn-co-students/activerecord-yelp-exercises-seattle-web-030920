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

    # def self.with_long_names
    #     self.
    # end

    def self.max_dishes
    end

    def self.focused
    end
end
