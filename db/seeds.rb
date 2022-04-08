# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create(
  [
    { first_name: "JM", last_name: "Arenas" }
  ]
)

contactnumbers = ContactNumber.create(
  [
    { phone_number: "639064797001", is_default: true, user_id: 1 }
  ]
)

bookings = Booking.create(
  [
    { start_date: "2022-04-11",
      end_date: "2022-04-15",
      nights: 4,
      guests: 5,
      adults: 2,
      children: 2,
      infants: 1,
      status_type: "Booked",
      currency: "PHP",
      payout_price: 1300.25,
      security_price: 199.75,
      total_price: 1500.00,
      user_id: 1
    }
  ]
)