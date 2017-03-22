# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
event_category = [
  {id: 1, name: "event.category.equipping"},
  {id: 2, name: "event.category.sunday_service"},
  {id: 3, name: "event.category.activities"},
  {id: 4, name: "event.category.cellgroups"}
];
event_category.each do |ec|
  Category.create!(id: ec[:id], name: ec[:name])
end

Location.delete_all

locations = [
  {id: 1, name:'Irvine', address: '1518 Brookhollow Drive, Santa Ana, CA 92705'}, 
  {id: 2, name: 'La Verne', address: '2990 Damien Ave, La Verne, CA 91750'}
]

locations.each do |l|
  Location.create!(id: l[:id], name: l[:name], address: l[:address])
end