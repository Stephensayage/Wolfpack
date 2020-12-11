# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(id: 6, username: 'Stephen', password: 'stephen1', image: "https://i.imgur.com/zoos4SZ.jpg")
User.create(username: 'Erica', password: 'erica1', image: 'https://images.generated.photos/HJoACxRxIMB5a-EQSpJbT7pRG-OufX5XWQpwqppXw7E/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA2NDYyMDUuanBn.jpg')
User.create(username: 'Justin', password: 'justin1', image: "https://images.generated.photos/bUmo_b56ZwuizjQq-jtrc_zxdoCr8sx83i_WSjaIChs/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAyODM5MTJfMDIx/NjEwNV8wMDA1MDI0/LmpwZw.jpg")
User.create(username: 'Andrew', password: 'andrew1', image: 'https://images.generated.photos/W5GV95ZrndMc6jyTY4EOca2fILO86VrezihwznRhMko/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA0Mjk0ODkuanBn.jpg')
User.create(username: 'Alden', password: 'alden1', image: 'https://images.generated.photos/ghQBqynJzuYqWtM5hg4YRKtcDNs-ESRVA3P6_W55gBs/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwNzA1NzlfMDM2/ODQ1Nl8wMjAxNzg4/LmpwZw.jpg')

Message.destroy_all
Message.create(body: 'Hi Everyone! Welcome to the first Wolfpack chatroom.', user: User.first)