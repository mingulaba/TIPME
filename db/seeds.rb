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
user_1 = User.new(first_name: "Ronald", last_name: "Rixby", password: "123456", email: "cardiganman@sweater.com")
user_1.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670423828/TFT-Sinking-Manager-RAW-1024x640_bap87s.jpg", content_type: "image/jpg")
user_1.save

file =URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670837225/Keshe_lookalike_mtbpr3.jpg")
user_2 = User.new(first_name: "Phillip", last_name: "Johnson", password: "123456", email: "allstarqb@footballstuf.com")
user_2.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/v1670425548/image_wdbzlq-Circle_kilndc.jpg", content_type: "image/jpg")
user_2.save

file =URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844627/Sally_vky9lx.jpg")
user_3 = User.new(first_name: "Sally", last_name: "Strings", password: "123456", email: "cuteasabutton@funny.com")
user_3.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/v1670426381/twin-peaks-lawsuit_adau3a-Circle_khkdcm.jpg", content_type: "image/jpg")
user_3.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670428152/shutterstock_110620211-653x339_k4mnoo-Circle_bgkpiv.jpg")
user_4 = User.new(first_name: "George", last_name: "Basshoff", password: "123456", email: "gorillaboy@amazon.com")
user_4.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424451/shutterstock_110620211-653x339_k4mnoo.jpg", content_type: "image/jpg")
user_4.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670845142/Karoline_b5en38.jpg")
user_5 = User.new(first_name: "Karoline", last_name: "Riviera", password: "123456", email: "partygirl555@funtimes.com")
user_5.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/hooters-server-girl_pxylwg.jpg.jpg", content_type: "image/jpg")
user_5.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670430161/handsome-male-cafe-worker-serving-customer-cheerful-young-waiter-holding-tray-cups-tea-standing-smiling-63677441_nkwcmw-Circle_noaprc.jpg")
user_6 = User.new(first_name: "Stevey", last_name: "Baldwin", password: "123456", email: "justanotherbaldwin@numberfive.com")
user_6.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424369/handsome-male-cafe-worker-serving-customer-cheerful-young-waiter-holding-tray-cups-tea-standing-smiling-63677441_nkwcmw.jpg", content_type: "image/jpg")
user_6.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670428748/shutterstock_1719230527_vvmchp-Circle_lwolxd.jpg")
user_7 = User.new(first_name: "Chester", last_name: "Mayfieldy", password: "123456", email: "mayfieldy@gopro.com")
user_7.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424196/shutterstock_1719230527_vvmchp.jpg", content_type: "image/jpg")
user_7.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670427089/cook-good-food-home-cafe-staff-barista-worker-man-cook-wear-apron-cafe-bar-barista-job-position-mature-barista-restaurant-staff-hipster-professional-apron-uniform-waiter-bartender_474717-55607_uaclaa-Circle_ayp5a6.jpg")
user_8 = User.new(first_name: "David", last_name: "Schriner", password: "123456", email: "lighthousebroght@bluelight.com")
user_8.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424370/cook-good-food-home-cafe-staff-barista-worker-man-cook-wear-apron-cafe-bar-barista-job-position-mature-barista-restaurant-staff-hipster-professional-apron-uniform-waiter-bartender_474717-55607_uaclaa.jpg", content_type: "image/jpg")
user_8.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670424974/TFT-Sinking-Manager-RAW-1024x640_bap87s.jpg")
user_9 = User.new(first_name: "Tobias", last_name: "Fiellmann", password: "123456", email: "newsunglasses@spectacles.com")
user_9.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424372/waiter-in-uniform-at-restaurant-pictures_csp6446688_pqf4up.jpg", content_type: "image/jpg")
user_9.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670429952/5984ae9eb9cd6c1f008b46dc_fnexvq-Circle_ijgoqq.jpg")
user_10 = User.new(first_name: "Sarah", last_name: "Donaldson", password: "123456", email: "myredcard@fastlane.com")
user_10.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424195/5984ae9eb9cd6c1f008b46dc_fnexvq.jpg", content_type: "image/jpg")
user_10.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670429754/85621914-chinese-restaurant-s-female-server-posing-in-the-studio-isolated-on-white_xrpx94-Circle_iwcpdn.jpg")
user_11 = User.new(first_name: "Chloe", last_name: "Festjacke", password: "123456", email: "tightjacket@luxurious.com")
user_11.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/85621914-chinese-restaurant-s-female-server-posing-in-the-studio-isolated-on-white_xrpx94.jpg", content_type: "image/jpg")
user_11.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670430590/portrait-smiling-male-server-working-night-shift-bar-restaurant-club_625516-2111_lpx9oi-Circle_giz4nk.jpg")
user_12 = User.new(first_name: "Ulf", last_name: "Weiner", password: "123456", email: "oscarmeyer@weiner.com")
user_12.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670430441/portrait-smiling-male-server-working-night-shift-bar-restaurant-club_625516-2111_lpx9oi.jpg", content_type: "image/jpg")
user_12.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670429562/Good-Server-Tips-and-Tricks_imqoke-Circle_bgnr7k.jpg")
user_13 = User.new(first_name: "Galvin", last_name: "Totbringer", password: "123456", email: "lastmanstanding@takecareofit.com")
user_13.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424194/Good-Server-Tips-and-Tricks_imqoke.jpg", content_type: "image/jpg")
user_13.save

puts "Creating Restaurant"
restaurant = Restaurant.new(name: "The Delicatessen", user_id: User.first.id)
restaurant.save!

puts "Creating team members"

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670837225/Keshe_lookalike_mtbpr3.jpg")
team_member_1 = TeamMember.new(first_name: "Phillip", last_name: "Johnson", birth_date: Date.new(2001, 4, 23), restaurant_id: 1, user_id: 2 )
team_member_1.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/v1670425548/image_wdbzlq-Circle_kilndc.jpg", content_type: "image/jpg")
team_member_1.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844627/Sally_vky9lx.jpg")
team_member_2 = TeamMember.new(first_name: "Sally", last_name: "Strings", birth_date: Date.new(1995, 7, 15), restaurant_id: 1, user_id: 3)
team_member_2.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/twin-peaks-lawsuit_adau3a.jpg", content_type: "image/jpg")
team_member_2.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670839299/Georgerestaurant_eru71e.jpg")
team_member_3 = TeamMember.new(first_name: "George", last_name: "Ullagso", birth_date: Date.new(1992, 5, 11), restaurant_id: 1, user_id: 4)
team_member_3.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424451/shutterstock_110620211-653x339_k4mnoo.jpg", content_type: "image/jpg")
team_member_3.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670845142/Karoline_b5en38.jpg")
team_member4 = TeamMember.new(first_name: "Karoline", last_name: "Riviera", birth_date: Date.new(1989, 8, 22), restaurant_id: 1, user_id: 5)
team_member4.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/hooters-server-girl_pxylwg.jpg.jpg", content_type: "image/jpg")
team_member4.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843208/Stevey_ejyg28.jpg")
team_member_5 = TeamMember.new(first_name: "Stevey", last_name: "Baldwin", birth_date: Date.new(1997, 1, 29), restaurant_id: 1, user_id: 6)
team_member_5.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424369/handsome-male-cafe-worker-serving-customer-cheerful-young-waiter-holding-tray-cups-tea-standing-smiling-63677441_nkwcmw.jpg", content_type: "image/jpg")
team_member_5.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843391/Chester_qdgzhf.jpg")
team_member_6 = TeamMember.new(first_name: "Chester", last_name: "Mayfieldy", birth_date: Date.new(1986, 7, 30), restaurant_id: 1, user_id: 7)
team_member_6.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424196/shutterstock_1719230527_vvmchp.jpg", content_type: "image/jpg")
team_member_6.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843614/David_f1zbfk.jpg")
team_member_7 = TeamMember.new(first_name: "David", last_name: "Schriner", birth_date: Date.new(2000, 11, 5), restaurant_id: 1, user_id: 8)
team_member_7.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424370/cook-good-food-home-cafe-staff-barista-worker-man-cook-wear-apron-cafe-bar-barista-job-position-mature-barista-restaurant-staff-hipster-professional-apron-uniform-waiter-bartender_474717-55607_uaclaa.jpg", content_type: "image/jpg")
team_member_7.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670424974/TFT-Sinking-Manager-RAW-1024x640_bap87s.jpg")
team_member_8 = TeamMember.new(first_name: "Tobias", last_name: "Fiellmann", birth_date: Date.new(1998, 10, 31), restaurant_id: 1, user_id: 9)
team_member_8.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424372/waiter-in-uniform-at-restaurant-pictures_csp6446688_pqf4up.jpg", content_type: "image/jpg")
team_member_8.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844271/Sarah_e0o7ql.jpg")
team_member_9 = TeamMember.new(first_name: "Sarah", last_name: "Donaldson", birth_date: Date.new(1995, 12, 27), restaurant_id: 1, user_id: 10)
team_member_9.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424195/5984ae9eb9cd6c1f008b46dc_fnexvq.jpg", content_type: "image/jpg")
team_member_9.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844037/Chloe_obqigg.jpg")
team_member_10 = TeamMember.new(first_name: "Chloe", last_name: "Festjacke", birth_date: Date.new(1989, 1, 5), restaurant_id: 1, user_id: 11)
team_member_10.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424655/85621914-chinese-restaurant-s-female-server-posing-in-the-studio-isolated-on-white_xrpx94.jpg", content_type: "image/jpg")
team_member_10.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670844473/Ulf_afazxl.jpg")
team_member_11 = TeamMember.new(first_name: "Ulf", last_name: "Weiner", birth_date: Date.new(1985, 8, 17), restaurant_id: 1, user_id: 12)
team_member_11.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670430441/portrait-smiling-male-server-working-night-shift-bar-restaurant-club_625516-2111_lpx9oi.jpg", content_type: "image/jpg")
team_member_11.save

file = URI.open("https://res.cloudinary.com/dcsnvqusv/image/upload/v1670843864/Galvin_zah46l.jpg")
team_member_12 = TeamMember.new(first_name: "Galvin", last_name: "Totbringer", birth_date: Date.new(1988, 2, 14), restaurant_id: 1, user_id: 13)
team_member_12.photo.attach(io: file, filename: "https://res.cloudinary.com/dcsnvqusv/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1670424194/Good-Server-Tips-and-Tricks_imqoke.jpg", content_type: "image/jpg")
team_member_12.save

puts "team members"






# user_3 =  first_name: "" last_name: password: email: admin: true

# user_4 = first_name: last_name: password: email: admin: true

# user_5 = first_name: last_name: password: email: admin: true

# admin = User.new(first_name: "Jerry",
#                  last_name: "Whuzaraccardrvr",
#                  password: "123456",
#                  email: "admin@tipme.com") # admin: true)
# admin.save

# 5.times do
#   user = User.new(first_name: Faker::Name.first_name,
#                   last_name: Faker::Name.last_name,
#                   password: "123456",
#                   email: Faker::Name.first_name)
#   user.save
# end

# # restaurant = Restaurant.new(name: "", user: admin)
# # restaurant.save



# TeamMember.new([{
#     user: User.first,
#     first_name: User.first.first_name,
#     last_name: User.first.last_name,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 45),
#     restaurant: 1

#     },
#     {
#     user: User.second,
#     first_name: User.second.first_name,
#     last_name: User.second.last_name,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 45),
#     restaurant: 1
#     },
#     {
#     user: User.third,
#     first_name: User.third.first_name,
#     last_name: User.third.last_name,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 45),
#     restaurant: 1
#     },
#     {
#     user: User.fourth,
#     first_name: User.fourth.first_name,
#     last_name: User.fourth.last_name,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 45),
#     restaurant: 1
#     },
#     {
#     user: User.fifth,
#     first_name: User.fifth.first_name,
#     last_name: User.fifth.first_name,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 45),
#     restaurant: 1

#     }])

# 15.times do
#   team_member = TeamMember.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     birth_date: Faker::Date.birthday(min_age: 18, max_age: 45))
# end
# # 20.times do
# #   team_member = TeamMember.new(first_name: Faker::Name.first_name,
# #                                last_name: Faker::Name.last_name,
# #                                birth_date: Faker::Date.birthday(min_age: 18, max_age: 45),
# #                                restaurant: restaurant,
# #                                user: User.all.sample)

# #   team_member.save
# # end
