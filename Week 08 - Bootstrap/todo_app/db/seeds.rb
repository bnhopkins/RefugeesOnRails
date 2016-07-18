# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Todo.create!(title: 'grocery shopping', notes: 'pickles, eggs, red onion')
Todo.create!(title: 'wash the car')
Todo.create!(title: 'register kids for school', notes: 'Register Kira for Ruby Junior High and Caleb for Rails High School')
Todo.create!(title: 'check engine light', notes: 'The check engine light is on in the Tacoma')
Todo.create!(title: 'dog groomers', notes: 'Take Pinky and Redford to the groomers on Wednesday the 23rd')
