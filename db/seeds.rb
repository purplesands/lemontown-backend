# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create(name:"lemon town")
Location.create(name:"clearing")

Day.create(word1:'beans' ,word2:'tricycle', word3:'truck', date:Date.new(2001,2,3) )


User.create(username:"cool guy" , avatar:"https://i0.wp.com/franchise.californiatortilla.com/wp-content/uploads/2016/12/vegetable-icon-png-2.png?ssl=1", bio: "he he he he eh ehhihe hehe heookp")
User.create(username:"dumb guy", avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe3x4obc9SUl4hoUzQNOX9F51LUYoPd_45oXQicNHLfJh4KhJkvw", bio: "broccolibroccoli broccoli broccoli broccoli")
User.create(username:"fun guy", avatar: "https://gamepedia.cursecdn.com/arksurvivalevolved_gamepedia/c/c3/Rockarrot.png", bio: "cool cool potato cool, cool cool cool cool")
User.create(username:"weird guy", avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXZtuB2mCYa9CH4767AsbyPCDGU7tibXwY6d8C6hM9UcejPFTz", bio: "weewhihgejojof  hqeohgepihpiqehgpqg hqegpihqeg")

Post.create(content: "ooerreo", user_id:1, location_id:2, is_image:false, day_id:1)
Post.create(content: "wee we wewewe wewe", user_id:1, location_id:1, is_image:false, day_id:1)
Post.create(content: "hoooookok", user_id:2, location_id:1, is_image:false, day_id:1)
Post.create(content: "weowkoek", user_id:2, location_id:2, is_image:false, day_id:1)
Post.create(content: "RA", user_id:3, location_id:2, is_image:false, day_id:1)
Post.create(content: "geerj", user_id:3, location_id:1, is_image:false, day_id:1)


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
