# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(username: 'Stephen', password: 'stephen1')
User.create(username: 'Erica', password: 'erica1')
User.create(username: 'Justin', password: 'justin1')
User.create(username: 'Andrew', password: 'andrew1')
User.create(username: 'Alden', password: 'alden1')

Message.destroy_all
Message.create(body: 'Hi Everyone! Welcome to the first Wolfpack chatroom.', user: User.first)