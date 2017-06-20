# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.destroy_all

c1 = Cat.create!(birth_date: "2000/01/01" , sex:"M", name: "Alex", description:"Good cat.", color: "white")
c2 = Cat.create!(birth_date: "2005/01/01" , sex:"F", name: "Berry", description:"Great cat.", color: "brown")
c3 = Cat.create!(birth_date: "2010/01/01" , sex:"F", name: "Carrie", description:"Very good cat.", color: "orange")
c4 = Cat.create!(birth_date: "2014/06/20" , sex:"M", name: "Dog", description:"Meh cat.", color: "black")
