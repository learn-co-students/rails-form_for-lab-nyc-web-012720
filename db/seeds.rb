# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




jimmy = Student.create(first_name: "James", last_name: "Harden")
ricky = Student.create(first_name: "Ricky", last_name: "Bobby")

math = SchoolClass.create(title: "Math", room_number: 101)
sci = SchoolClass.create(title: "Science", room_number: 103)