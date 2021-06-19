# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

(1..10).each do |id|
	book= Book.create!(
		id: id,
		book_title: Faker::Book.title
		)
	book.authors.each do |author|
		author.id = id
	end
end

(1..10).each do |id|
	Author.create!(
		id: id,
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name
		)
end

