# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create(name:"lemon town")
Location.create(name:"clearing")

User.create(username:"cool guy")
User.create(username:"dumb guy")
User.create(username:"fun guy")
User.create(username:"weird guy")

Post.create(content: "ooerreo", user_id:1, location_id:2, is_image:false)
Post.create(content: "wee we wewewe wewe", user_id:1, location_id:1, is_image:false)
Post.create(content: "hoooookok", user_id:2, location_id:1, is_image:false)
Post.create(content: "weowkoek", user_id:2, location_id:2, is_image:false)
Post.create(content: "RA", user_id:3, location_id:2, is_image:false)
Post.create(content: "geerj", user_id:3, location_id:1, is_image:false)


Entry.create(content: "an entry", user_id:1)
Entry.create(content: "this", user_id:1)
Entry.create(content: "cool", user_id:2)
Entry.create(content: "dumb", user_id:3)
Entry.create(content: "another entry", user_id:3)
Entry.create(content: " W4", user_id:4)
Entry.create(content: "44444", user_id:4)

Following.create(user_id:1 , followed_user_id:2)
Following.create(user_id:1 , followed_user_id:3)
Following.create(user_id:2 , followed_user_id:1)
Following.create(user_id:2 , followed_user_id:3)
Following.create(user_id:4 , followed_user_id:1)
Following.create(user_id:4 , followed_user_id:2)
