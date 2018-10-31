require 'open-uri'

puts "Cleaning DB..."
Motorcycle.destroy_all


puts "Creating motorcycles..."
motorcycles_attributes = [
  {
    name: "Black Panther",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },
  {
    name: "Blizzard",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },
  {
    name: "Gaddafi",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },

  {
    name: "Goodluck Jonathan",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },

  {
    name: "Haile Selassie",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },

  {
    name: "Kofi Annan",
    motor_type: "Yamaha XT225",
    description: "Engine size: 225cc / max speed 120 kph | Fuel usage: circa 650 KSh / 100 km | Manual transition with 5 gears",
    price: 19,
    picture: "../app/assets/images/YamahaXT225.jpg",
  },

  {
    name: "Mandela",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },
  {
    name: "Mathai",
    motor_type: "Wego 110",
    description: "Engine size: 110cc / max speed 85 kph | Fuel usage: circa 250 KSh / 100 km | Automatic transition",
    price: 13,
    picture: "../app/assets/images/Wego110.jpg",
  },
  {
    name: "Nyerere",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },

  {
    name: "Raila",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },

  {
    name: "Samora",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },

  {
    name: "Sankara",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  },

  {
    name: "Steve Biko",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
  }
  {
    name: "Uhuru",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "../app/assets/images/BoxerX150.jpg",
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
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 5.times do
# 	Motorcycle.create(
# 		name:"CrazyWheels",
# 		motor_type:"OnTheRoad",
# 		description:"Rebel",
# 		price:50,
# 		picture:"https://picsum.photos/200/300/?random")
# end

