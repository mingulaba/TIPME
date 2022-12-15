# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
require 'date'
require 'open-uri'

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting database"

TeamMember.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating users"

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670423828/TFT-Sinking-Manager-RAW-1024x640_bap87s.jpg")
user1 = User.new(first_name: "Ronald", last_name: "Rixby", password: "123456", email: "cardiganman@sweater.com", admin: true)
user1.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670423828/TFT-Sinking-Manager-RAW-1024x640_bap87s.jpg", content_type: "image/jpg")
user1.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670837225/Keshe_lookalike_mtbpr3.jpg")
user2 = User.new(first_name: "Phillip", last_name: "Johnson", password: "123456", email: "allstarqb@footballstuf.com")
user2.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/v1670425548/image_wdbzlq-Circle_kilndc.jpg", content_type: "image/jpg")
user2.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844627/Sally_vky9lx.jpg")
user3 = User.new(first_name: "Sally", last_name: "Strings", password: "123456", email: "cuteasabutton@funny.com")
user3.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/v1670426381/twin-peaks-lawsuit_adau3a-Circle_khkdcm.jpg", content_type: "image/jpg")
user3.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670428152/shutterstock_110620211-653x339_k4mnoo-Circle_bgkpiv.jpg")
user4 = User.new(first_name: "George", last_name: "Basshoff", password: "123456", email: "gorillaboy@amazon.com")
user4.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424451/shutterstock_110620211-653x339_k4mnoo.jpg", content_type: "image/jpg")
user4.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670845142/Karoline_b5en38.jpg")
user5 = User.new(first_name: "Karoline", last_name: "Riviera", password: "123456", email: "partygirl555@funtimes.com")
user5.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/hooters-server-girl_pxylwg.jpg.jpg", content_type: "image/jpg")
user5.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670430161/handsome-male-cafe-worker-serving-customer-cheerful-young-waiter-holding-tray-cups-tea-standing-smiling-63677441_nkwcmw-Circle_noaprc.jpg")
user6 = User.new(first_name: "Stevey", last_name: "Baldwin", password: "123456", email: "justanotherbaldwin@numberfive.com")
user6.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424369/handsome-male-cafe-worker-serving-customer-cheerful-young-waiter-holding-tray-cups-tea-standing-smiling-63677441_nkwcmw.jpg", content_type: "image/jpg")
user6.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670428748/shutterstock_1719230527_vvmchp-Circle_lwolxd.jpg")
user7 = User.new(first_name: "Chester", last_name: "Mayfieldy", password: "123456", email: "mayfieldy@gopro.com")
user7.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424196/shutterstock_1719230527_vvmchp.jpg", content_type: "image/jpg")
user7.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670427089/cook-good-food-home-cafe-staff-barista-worker-man-cook-wear-apron-cafe-bar-barista-job-position-mature-barista-restaurant-staff-hipster-professional-apron-uniform-waiter-bartender_474717-55607_uaclaa-Circle_ayp5a6.jpg")
user8 = User.new(first_name: "David", last_name: "Schriner", password: "123456", email: "lighthousebroght@bluelight.com")
user8.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424370/cook-good-food-home-cafe-staff-barista-worker-man-cook-wear-apron-cafe-bar-barista-job-position-mature-barista-restaurant-staff-hipster-professional-apron-uniform-waiter-bartender_474717-55607_uaclaa.jpg", content_type: "image/jpg")
user8.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670424974/TFT-Sinking-Manager-RAW-1024x640_bap87s.jpg")
user9 = User.new(first_name: "Tobias", last_name: "Fiellmann", password: "123456", email: "newsunglasses@spectacles.com")
user9.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424372/waiter-in-uniform-at-restaurant-pictures_csp6446688_pqf4up.jpg", content_type: "image/jpg")
user9.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670429952/5984ae9eb9cd6c1f008b46dc_fnexvq-Circle_ijgoqq.jpg")
user10 = User.new(first_name: "Sarah", last_name: "Donaldson", password: "123456", email: "myredcard@fastlane.com")
user10.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424195/5984ae9eb9cd6c1f008b46dc_fnexvq.jpg", content_type: "image/jpg")
user10.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670429754/85621914-chinese-restaurant-s-female-server-posing-in-the-studio-isolated-on-white_xrpx94-Circle_iwcpdn.jpg")
user11 = User.new(first_name: "Chloe", last_name: "Festjacke", password: "123456", email: "tightjacket@luxurious.com")
user11.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/85621914-chinese-restaurant-s-female-server-posing-in-the-studio-isolated-on-white_xrpx94.jpg", content_type: "image/jpg")
user11.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670430590/portrait-smiling-male-server-working-night-shift-bar-restaurant-club_625516-2111_lpx9oi-Circle_giz4nk.jpg")
user12 = User.new(first_name: "Ulf", last_name: "Weiner", password: "123456", email: "oscarmeyer@weiner.com")
user12.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670430441/portrait-smiling-male-server-working-night-shift-bar-restaurant-club_625516-2111_lpx9oi.jpg", content_type: "image/jpg")
user12.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670429562/Good-Server-Tips-and-Tricks_imqoke-Circle_bgnr7k.jpg")
user13 = User.new(first_name: "Galvin", last_name: "Totbringer", password: "123456", email: "lastmanstanding@takecareofit.com")
user13.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424194/Good-Server-Tips-and-Tricks_imqoke.jpg", content_type: "image/jpg")
user13.save

puts "Creating Restaurant"

restaurant1 = Restaurant.new(name: "The Delicatessen", user_id: User.first.id)
restaurant1.save

restaurant2 = Restaurant.new(name: "Tandem Café", user_id: User.first.id)
restaurant2.save

puts "Creating team members"

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670837225/Keshe_lookalike_mtbpr3.jpg")

team_member1 = TeamMember.new(first_name: "Phillip", last_name: "Johnson", birth_date: Date.new(2001, 4, 23), restaurant_id: 2, user_id: 2, introduction: "I would like to save up for funny adventure 🌋")
team_member1.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/v1670425548/image_wdbzlq-Circle_kilndc.jpg", content_type: "image/jpg")
team_member1.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844627/Sally_vky9lx.jpg")

team_member2 = TeamMember.new(first_name: "Sally", last_name: "Strings", birth_date: Date.new(1995, 7, 15), restaurant_id: 2, user_id: 3, introduction: "I would like to save up for my education as a Designer 🎨")
team_member2.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/twin-peaks-lawsuit_adau3a.jpg", content_type: "image/jpg")
team_member2.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670839299/Georgerestaurant_eru71e.jpg")

team_member3 = TeamMember.new(first_name: "George", last_name: "Ullagso", birth_date: Date.new(1992, 5, 11), restaurant_id: 1, user_id: 4, introduction: "I would like to save up for Le Wagon Bootcamp 🧑🏽‍💻")
team_member3.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424451/shutterstock_110620211-653x339_k4mnoo.jpg", content_type: "image/jpg")
team_member3.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670845142/Karoline_b5en38.jpg")

team_member4 = TeamMember.new(first_name: "Karoline", last_name: "Riviera", birth_date: Date.new(1989, 8, 22), restaurant_id: 1, user_id: 5, introduction: "I would like to save up to open my own restaurant 🥙 ")
team_member4.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/hooters-server-girl_pxylwg.jpg.jpg", content_type: "image/jpg")
team_member4.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843208/Stevey_ejyg28.jpg")

team_member5 = TeamMember.new(first_name: "Stevey", last_name: "Baldwin", birth_date: Date.new(1997, 1, 29), restaurant_id: 2, user_id: 6, introduction: "I would like to save up for Antarktica expedition 🛟")
team_member5.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424369/handsome-male-cafe-worker-serving-customer-cheerful-young-waiter-holding-tray-cups-tea-standing-smiling-63677441_nkwcmw.jpg", content_type: "image/jpg")
team_member5.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843391/Chester_qdgzhf.jpg")
team_member6 = TeamMember.new(first_name: "Chester", last_name: "Mayfieldy", birth_date: Date.new(1986, 7, 30), restaurant_id: 1, user_id: 7, introduction: "I would like to save up to buy a new car for my dad 🚘")
team_member6.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424196/shutterstock_1719230527_vvmchp.jpg", content_type: "image/jpg")
team_member6.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843614/David_f1zbfk.jpg")
team_member7 = TeamMember.new(first_name: "David", last_name: "Schriner", birth_date: Date.new(2000, 11, 5), restaurant_id: 1, user_id: 8, introduction: "I would like to save up for a boat trip ⛵️ ")
team_member7.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424370/cook-good-food-home-cafe-staff-barista-worker-man-cook-wear-apron-cafe-bar-barista-job-position-mature-barista-restaurant-staff-hipster-professional-apron-uniform-waiter-bartender_474717-55607_uaclaa.jpg", content_type: "image/jpg")
team_member7.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670424974/TFT-Sinking-Manager-RAW-1024x640_bap87s.jpg")

team_member8 = TeamMember.new(first_name: "Tobias", last_name: "Fiellmann", birth_date: Date.new(1998, 10, 31), restaurant_id: 1, user_id: 9, introduction: "I would like to save up to make an unforgettable date 🥰")
team_member8.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424372/waiter-in-uniform-at-restaurant-pictures_csp6446688_pqf4up.jpg", content_type: "image/jpg")
team_member8.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844271/Sarah_e0o7ql.jpg")

team_member9 = TeamMember.new(first_name: "Sarah", last_name: "Donaldson", birth_date: Date.new(1995, 12, 27), restaurant_id: 2, user_id: 10, introduction: "I would like to save up for a Patagonia trip 🏞")
team_member9.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424195/5984ae9eb9cd6c1f008b46dc_fnexvq.jpg", content_type: "image/jpg")
team_member9.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844037/Chloe_obqigg.jpg")
team_member10 = TeamMember.new(first_name: "Chloe", last_name: "Festjacke", birth_date: Date.new(1989, 1, 5), restaurant_id: 1, user_id: 11, introduction: "I would like to save up to upgrade my apartment 🪜")
team_member10.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/85621914-chinese-restaurant-s-female-server-posing-in-the-studio-isolated-on-white_xrpx94.jpg", content_type: "image/jpg")
team_member10.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844473/Ulf_afazxl.jpg")
team_member11 = TeamMember.new(first_name: "Ulf", last_name: "Weiner", birth_date: Date.new(1985, 8, 17), restaurant_id: 2, user_id: 12, introduction: "I would like to save up for a new mountain bike 🚲")

team_member11.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670430441/portrait-smiling-male-server-working-night-shift-bar-restaurant-club_625516-2111_lpx9oi.jpg", content_type: "image/jpg")
team_member11.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843864/Galvin_zah46l.jpg")
team_member12 = TeamMember.new(first_name: "Galvin", last_name: "Totbringer", birth_date: Date.new(1988, 2, 14), restaurant_id: 2, user_id: 13, introduction: "I would like to save up for a cooking school 🍳")
team_member12.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424194/Good-Server-Tips-and-Tricks_imqoke.jpg", content_type: "image/jpg")
team_member12.save

puts "Creating tables"

100.times do
  price = rand(25..250)
  tip = (price * 10) / 100
  review = Faker::Restaurant.review
  rating = rand(3..5)
  date = Faker::Date.between(from: '2022-11-01', to: '2022-12-16')
  restaurant = Restaurant.first
  team_member = restaurant.team_members.sample
  table = Table.new(price: price, tip: tip, review: review, rating: rating, date: date, team_member_id: team_member.id)
  table.save
end

25.times do
  price = rand(25..150)
  tip = (price * 10) / 100
  review = Faker::Restaurant.review
  rating = rand(3..5)
  date = Faker::Date.between(from: '2022-11-01', to: '2022-12-16')
  restaurant = Restaurant.second
  team_member = restaurant.team_members.sample
  table = Table.new(price: price, tip: tip, review: review, rating: rating, date: date, team_member_id: team_member.id)
  table.save
end
