# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
require 'date'
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# TeamMember.destroy_all
# Restaurant.destroy_all
# User.destroy_all

user_1 = User.new(first_name: "Ronald", last_name: "Rixby", password: "123456", email: "cardiganman@sweater.com", admin: true)
user_1.save

user_2 = User.new(first_name: "Phillip", last_name: "Johnson", password: "123456", email: "allstarqb@footballstuf.com")
user_2.save

user_3 = User.new(first_name: "Sally", last_name: "Strings", password: "123456", email: "cuteasabutton@funny.com")
user_3.save

user_4 = User.new(first_name: "George", last_name: "Basshoff", password: "123456", email: "gorillaboy@amazon.com")
user_4.save

user_5 = User.new(first_name: "Karoline", last_name: "Riviera", password: "123456", email: "partygirl555@funtimes.com")
user_5.save

user_6 = User.new(first_name: "Stevey", last_name: "Baldwin", password: "123456", email: "justanotherbaldwin@numberfive.com")
user_6.save

user_7 = User.new(first_name: "Chester", last_name: "Mayfieldy", password: "123456", email: "mayfieldy@gopro.com")
user_7.save

user_8 = User.new(first_name: "David", last_name: "Schriner", password: "123456", email: "lighthousebroght@bluelight.com")
user_8.save

user_9 = User.new(first_name: "Tobias", last_name: "Fiellmann", password: "123456", email: "newsunglasses@spectacles.com")
user_9.save

user_10 = User.new(first_name: "Sarah", last_name: "Donaldson", password: "123456", email: "myredcard@fastlane.com")
user_10.save

user_11 = User.new(first_name: "Chloe", last_name: "Festjacke", password: "123456", email: "tightjacket@luxurious.com")
user_11.save

user_12 = User.new(first_name: "Ulf", last_name: "Weiner", password: "123456", email: "oscarmeyer@weiner.com")
user_12.save

user_13 = User.new(first_name: "Galvin", last_name: "Totbringer", password: "123456", email: "lastmanstanding@takecareofit.com")
user_13.save

restaurant = Restaurant.new(name: "The Delicatessen", user_id: 1)
restaurant.save

team_member_1 = TeamMember.new(first_name: "Phillip", last_name: "Johnson", birth_date: Date.new(2001, 4, 23), restaurant_id: 1, user_id: 2 )
team_member_1.save

team_member_2 = TeamMember.new(first_name: "Sally", last_name: "Strings", birth_date: Date.new(1995, 7, 15), restaurant_id: 1, user_id: 3)
team_member_2.save

team_member_3 = TeamMember.new(first_name: "George", last_name: "Ullagso", birth_date: Date.new(1992, 5, 11), restaurant_id: 1, user_id: 4)
team_member_3.save

team_member4 = TeamMember.new(first_name: "Karoline", last_name: "Riviera", birth_date: Date.new(1989, 8, 22), restaurant_id: 1, user_id: 5)
team_member4.save

team_member_5 = TeamMember.new(first_name: "Stevey", last_name: "Baldwin", birth_date: Date.new(1997, 1, 29), restaurant_id: 1, user_id: 6)
team_member_5.save

team_member_6 = TeamMember.new(first_name: "Chester", last_name: "Mayfieldy", birth_date: Date.new(1986, 7, 30), restaurant_id: 1, user_id: 7)
team_member_6.save

team_member_7 = TeamMember.new(first_name: "David", last_name: "Schriner", birth_date: Date.new(2000, 11, 5), restaurant_id: 1, user_id: 8)
team_member_7.save

team_member_8 = TeamMember.new(first_name: "Tobias", last_name: "Fiellmann", birth_date: Date.new(1998, 10, 31), restaurant_id: 1, user_id: 9)
team_member_8.save

team_member_9 = TeamMember.new(first_name: "Sarah", last_name: "Donaldson", birth_date: Date.new(1995, 12, 27), restaurant_id: 1, user_id: 10)
team_member_9.save

team_member_10 = TeamMember.new(first_name: "Chloe", last_name: "Festjacke", birth_date: Date.new(1989, 1, 5), restaurant_id: 1, user_id: 11)
team_member_10.save

team_member_11 = TeamMember.new(first_name: "Ulf", last_name: "Weiner", birth_date: Date.new(1985, 8, 17), restaurant_id: 1, user_id: 12)
team_member_11.save

team_member_12 = TeamMember.new(first_name: "Galvin", last_name: "Totbringer", birth_date: Date.new(1988, 2, 14), restaurant_id: 1, user_id: 13)
team_member_12.save






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
