# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_list = [ 
  ["recursive", "RE"], 
  ["onetime", "ONET"],
  ["multiday", "MD"]
]

type_list.each do |type, var|
  EventType.create(name: type, variable: var)
end

event_status = [
  ["Published", "PUBLISHED"],
  ["Draft", "DRAFT"]
]

event_status.each do |name, var|
  EventStatus.create(name: name, variable: var)
end
