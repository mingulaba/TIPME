# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "date"

user1 = User.new(first_name: "Mr", last_name: "Meeseeks", email: "mr.meeseeks@meeseeks.com", password: "123456")
user1.save

user2 = User.new(first_name: "John", last_name: "Doe", email: "john.doe@doe.com", password: "123456")
user2.save

user3 = User.new(first_name: "Zadig", last_name: "Voltaire", email: "zadig.voltaire@voltaire.com", password: "123456")
user3.save

user4 = User.new(first_name: "Alice", last_name: "Wonderland", email: "alice.wonderland@wonderland.com", password: "123456")
user4.save

restaurant = Restaurant.new(name: "Pizzeria", user_id: 1)
restaurant.save

team_member1 = TeamMember.new(first_name: "John", last_name: "Doe", birth_date: Date.new(1995, 5, 9), restaurant_id: 1, user_id: 2)
team_member1.save

team_member2 = TeamMember.new(first_name: "Zadig", last_name: "Voltaire", birth_date: Date.new(1995, 5, 9), restaurant_id: 1, user_id: 3)
team_member2.save

team_member3 = TeamMember.new(first_name: "Alice", last_name: "Wonderland", birth_date: Date.new(1995, 5, 9), restaurant_id: 1, user_id: 4)
team_member3.save
