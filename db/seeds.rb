require 'json'
require 'open-uri'

puts "Cleaning DB..."
Motorcycle.destroy_all


puts "Creating motorcycles..."
motorcycles_attributes = [
  {
    name: "",
    type: "",
    description: "",
    price: ,
    picture: "",
  }
]

Motorcycle.create!(motorcycles_attributes)
puts "Motorcycles created!"

# create_table "motorcycles", force: :cascade do |t|
#   t.string "name"
#   t.string "type"
#   t.text "description"
#   t.integer "price"
#   t.string "picture"
