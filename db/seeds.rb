# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Trip.delete_all
Expense.delete_all
Usertrip.delete_all


u1 = User.create!( name: "admin", email:"admin@expenseshare.com", password: "password", role: "admin")
u2 = User.create!( name: "Ewan", email: "user@expenseshare.com", password: "password", role: "user")
u3 = User.create!( name: "Boby", email: "boby@expenseshare.com", password: "password", role: "user")