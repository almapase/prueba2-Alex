# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Work.destroy_all
User.destroy_all
Inventory.destroy_all
Category.destroy_all


4.times do |i|
  c = Category.create(name: "Categoría #{i+1}")
  c.inventories.build(description: "item#{i+1}", size: 2, serial_number: i)
  c.save
end



u = User.new(name: "usuario 1")
u.works.build(description: "trabajo1-1", inventory: Inventory.find_by(serial_number: 1))
u.works.build(description: "trabajo1-2")
u.save

u = User.new(name: "usuario 2")
u.works.build(description: "trabajo2-1", inventory: Inventory.find_by(serial_number: 3))
u.works.build(description: "trabajo2-2")
u.save
