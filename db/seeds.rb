Restaurant.destroy_all
Dish.destroy_all
Tag.destroy_all

tags = [
    "Spicy",
    "Vegetarian",
    "Vegan",
    "Mild",
    "Gluten Free",
    "Dessert",
    "Italian",
    "American",
    "Chinese",
    "Greek",
    "Mexican"
]

tags.each do |tag|
    Tag.create(name: tag)
end
puts "Added all Tags"

while Restaurant.all.count < 20 do
    rest = Restaurant.create(name: Faker::Restaurant.name)
    10.times do
        dish = Dish.create(name: Faker::Food.dish)
        while dish.tags.size < 3 do
            dish.tags << Tag.all.sample
        end
        rest.dishes << dish
    end
end

puts "Added all Restaurants"
puts "Added all Dishes"
puts "Done"
