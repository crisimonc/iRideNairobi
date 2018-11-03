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
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Blizzard",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Gaddafi",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Goodluck Jonathan",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Haile Selassie",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Kofi Annan",
    motor_type: "Yamaha XT225",
    description: "Engine size: 225cc / max speed 120 kph | Fuel usage: circa 650 KSh / 100 km | Manual transition with 5 gears",
    price: 19,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179869/iRideNairobi/YamahaXT225.jpg.jpg",
  },

  {
    name: "Mandela",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179869/iRideNairobi/YamahaXT225.jpg.jpg",
  },
  {
    name: "Mathai",
    motor_type: "Wego 110",
    description: "Engine size: 110cc / max speed 85 kph | Fuel usage: circa 250 KSh / 100 km | Automatic transition",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179738/iRideNairobi/Wego110.jpg",
  },
  {
    name: "Nyerere",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179738/iRideNairobi/Wego110.jpg",
  },

  {
    name: "Raila",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Samora",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },

  {
    name: "Sankara",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Steve Biko",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
  },
  {
    name: "Uhuru",
    motor_type: "Boxer X150",
    description: "Engine size: 150cc / max speed 100 kph | Fuel usage: circa 250 KSh / 100 km | Manual transition with 4 gears",
    price: 13,
    picture: "https://res.cloudinary.com/cris7cris/image/upload/v1541179735/iRideNairobi/BoxerX150.jpg.jpg",
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




# # TODO: Write a seed to insert 100 posts in the database

# puts 'Creating 100 fake posts...'
# 100.times do
#   post = Post.new(
#     title: Faker::Name.name,
#     url: "http:/#{Faker::Pokemon.name}/#{Faker::Pokemon.move} ",
#     votes: rand(0..5)
#   )
#   post.save!
# end

# puts 'Finished!'

puts "Creating Some Fake Reviews..."
20.times do
  booking = Booking.all.sample
  Review.create(booking: booking, content: ["The best motorbike ever", "Nice", "Super Cool", "The best way to explore Nairobi"].sample, stars: rand(1..5))
end
puts "Reviews created!"
