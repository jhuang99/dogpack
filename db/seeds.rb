# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(Roofus Buster Cloud Kiko).each do |name|
  Dog.create name: name, email: name+"@dogpack.com", password: 'password', age: rand(1..20), breed: "labradoodle"
end


