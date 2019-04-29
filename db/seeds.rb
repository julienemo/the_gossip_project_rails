# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
GossipTag.destroy_all
PrivateMessage.destroy_all
puts "previous database has been destroyed"

# 10 cities creation
10.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
puts "10 cities has been created"

# 10 users creation
10.times do
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.description = Faker::Lorem.paragraph
  user.email = Faker::Internet.email
  user.age = rand(0..89)
  user.city_id = rand((City.first.id)..(City.last.id))
  user.save
end
puts "10 users has been created"

# 20 gossips creation
20.times do
gossip = Gossip.create!(title: Faker::Book.title, content: Faker::Lorem.paragraph, user_id: User.all.sample.id)
end
puts "20 gossips has been created"

# 10 tags creation
10.times do
tag = Tag.create!(title: Faker::Hipster.word)
end
puts "10 tags has been created"

# gossip/tag creation
100.times do
	GossipTag.create!(gossip_id: Gossip.all.sample.id, tag_id: Tag.all.sample.id)
end
puts "some weird combo gossip and tag has been created"

# private messages creation
42.times do
  PrivateMessage.create!(sender_id: User.all.sample.id , recipient_id: User.all.sample.id  , content: Faker::Lorem.sentence )
end
puts "some 'private' messages has been created"
