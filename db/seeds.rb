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

@dogs = Dog.all
@dogs.each do |dog|
	Walk.create(dog_id: dog.id, location: "At the park", date: "2015-12-01", title: "Morning walk", description: "Ran around a lot and rolled in grass")
end

posts = ["Saw a Squirrel!", "Caught a mouse", "GOT FOOD", "Chased my tail"]
posts.each do |description|
	Post.create(content: description, dog_id: 1)
end

