# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Work.destroy_all
User.destroy_all

2.times do |i|
  u = User.new(name: "usuario#{i+1}")
  u.works.build(description: "trabajo#{i+1}-1")
  u.works.build(description: "trabajo#{i+1}-2")
  u.save
end
