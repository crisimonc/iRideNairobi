require 'open-uri'

puts "Cleaning DB..."
User.destroy_all
Motorcycle.destroy_all
Review.destroy_all
Booking.destroy_all

puts "---------------------"
puts "Login:"
puts "test@test.com"
puts "pass: 123456"
puts "---------------------"
User.create(email: "test@test.com", password: "123456")

puts "Creating motorcycles..."
motorcycles_attributes = [
  {
    name: "Black Panther",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },
  {
    name: "Blizzard",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },
  {
    name: "Gaddafi",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },

  {
    name: "Goodluck Jonathan",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },

  {
    name: "Haile Selassie",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },

  {
    name: "Kofi Annan",
    motor_type: "Yamaha XT225",
    description: "Engine size: 225cc / max speed 120 kph | Fuel usage: circa 650 KSh / 100 km | Manual transition with 5 gears",
    price: 19,
    picture: "YamahaXT225.jpg",
  },

  {
    name: "Mandela",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },
  {
    name: "Mathai",
    motor_type: "Wego 110",
    description: "Engine size: 110cc / max speed 85 kph | Fuel usage: circa 250 KSh / 100 km | Automatic transition",
    price: 13,
    picture: "Wego110.jpg",
  },
  {
    name: "Nyerere",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },

  {
    name: "Raila",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },

  {
    name: "Samora",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },

  {
    name: "Sankara",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },
  {
    name: "Steve Biko",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  },
  {
    name: "Uhuru",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "BoxerX150.jpg",
  }
]

Motorcycle.create!(motorcycles_attributes)
puts "Motorcycles created!"


def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

puts "Creating Bookings..."
5.times do
  motorcycle = Motorcycle.all.sample
  user = User.all.sample
  Booking.create(user: user, motorcycle: motorcycle, start_date: time_rand.to_date, end_date: time_rand.to_date, address: "Nairobi")
end
puts "Bookings created!"

puts "Creating Reviews..."
30.times do
  booking = Booking.all.sample
  Review.create(booking: booking, content: "blabla", stars: 4)
end
puts "Reviews created!"
