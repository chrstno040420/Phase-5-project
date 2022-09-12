require 'faker'



FoodTruck.destroy_all
FoodieOwner.destroy_all
User.destroy_all
Menu.destroy_all
Rating.destroy_all


# puts " Users Created"
# 10.times{User.create(name:Faker::Name.name, password:Faker::Internet.password, email:Faker::Internet.email ,phone_number:)}

# puts " Creating Categorie"
# 10.times{Categorie.create(name: Faker::Food.ethnic_category)}


# puts " Creating Ratings"
# 25.times{Rating.create(star_rating: Faker::Number.within(range: 1..10), discription: Faker::Restaurant.review , user_id:  )}

puts " Creating Food trucks"

FoodTruck.create!([
{name: "Sugar Burger",                                          
food_type: "American",                                           
address: "88334 Benjamin Rue",                                  
state: "Texas",                                                
zipcode: 78729,                                                
seating: "Indoor/Outdoors",                                           
business_hours: "Monday-Saturday 2:00pm-11:00pm",
image_url:"https://images.unsplash.com/photo-1615472846781-d9266dfff3e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"},
{name: "Big Curry",
food_type: "Indian",
address: "43829 Gertrude Route",
state: "Texas",
zipcode: 78757,
seating: "Outdoors",
business_hours: "Tuesday-Sunday 10:00am-10:00pm",
image_url:"https://media.istockphoto.com/photos/metallic-food-trailer-on-cityscape-background-with-blank-billboard-3d-picture-id1149282221?k=20&m=1149282221&s=612x612&w=0&h=_NfnE6eHH1z7IWMyKTD-TAUcu1HhhrmWoySlfps9BOA="},
{name: "Green Coffee",
food_type: "Coffee",
address: "867 Delcie Hill",
state: "Texas",
zipcode: 78728,
seating: "Indoor/Outdoors",
business_hours: "Monday-Sunday 5:00am-3:00pm",
image_url:"https://images.unsplash.com/photo-1600093463592-8e36ae95ef56?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60"},
{name: "Silver Box Desserts",
food_type: "Desserts",
address: "216 Misty Roads",
state: "Texas",
zipcode: 78757,
seating: "Outdoors",
business_hours: "Monday-Saturday 11:00am-9:00pm",
image_url:"https://images.unsplash.com/photo-1601205741712-b261aff33a7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVzc2VydCUyMHNob3B8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"},
{name: "Blue Plate Juice Bar",
food_type: "Healthy",
address: "6507 Takako Ranch",
state: "Texas",
zipcode: 78757,
seating: "Indoor",
business_hours: "Monday-Sunday 8:00am-8:00pm",
image_url:"https://images.unsplash.com/photo-1453614512568-c4024d13c247?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGp1aWNlJTIwYmFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60"},
{name: "Green Subs",
food_type: "Caribbean",
address: "508 Jess Lakes",
state: "Texas",
zipcode: 78728,
seating: "Outdoors",
business_hours: "Monday-Friday 10:00am-10:00pm",
image_url:"https://images.unsplash.com/photo-1511421585906-57a6e6dc3a2f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3Vic3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
},
{name: "Orange King",
food_type: "Healthy",
address: "730 Margarette Ford",
state: "Texas",
zipcode: 78729,
seating: "Indoor/Outdoors",
business_hours: "Monday-Saturday 5:00am-10:00pm",
image_url:"https://images.unsplash.com/photo-1603803721487-97009eb7f8db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fG9yYW5nZSUyMGRyaW5rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60"},
{name: "809 Diner",
food_type: "Breakfast",
address: "9338 Dustin Street",
state: "Texas",
zipcode: 78757,
seating: "indoor",
business_hours: "ALLWAYS OPEN!!! 365",
image_url:"https://images.unsplash.com/photo-1618670708336-2df80fdd0ecb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGluZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60"},
{name: "Burro Bro's",
food_type: "Mexican",
address: "59656 Murazik Flats",
state: "Texas",
zipcode: 78757,
seating: "Indoor/Outdoors",
business_hours: "Monday-Friday 10:00am-10:00pm",
image_url:"https://images.unsplash.com/photo-1531451740568-f8c030c0bca6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1leGljYW4lMjByZXN0YXVyYW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60"},
{name: "Fast D's Tacos",
food_type: "Mexican",
address: "716 Magan Ports",
state: "Texas",
zipcode: 78757,
seating: "Outdoors",
business_hours: "Monday-Friday 10:00am-10:00pm",
image_url:"https://images.unsplash.com/photo-1508154048109-de555266b70a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzJ8fGZvb2QlMjB0cnVja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60"},
])


puts "created Foodie owners"
FoodieOwner.create!([
{name: "Mr. Krystle Franecki",     
email: "Krystle.Franecki@yahoo.com",
phone_number: "712-344-2536",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),     
food_truck_id:1},
{name: "Ahmad Schuppe",
email: "Schuppe_ahmad_food@gmail.com",
phone_number: "512-929-6527",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id:2},
{name: "Cletus Schaefer",
email: "Schaeferllc@icloud.com",
phone_number: "210-480-3452",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id:3},
{name: "Ricardo Ullrich",
email: "silverBoxsweets@gmail.com",
phone_number: "512-787-5442",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id:4},
{name: "Brandon Schoen",
email: "Juicy_healthy@yahoo.com",
phone_number: "936-867-7258",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id:5},
{name: "Brandon Kertzmann",
email: "hue@lindgren-larson.com",
phone_number: "207-125-9851",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id:6},
{name: "Brock Watsica",
email: "KingOrange@icloud.com",
phone_number: "813-019-3605",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id:7},
{name: "Jacalyn Feeney",
email: "Jacalyns.special@yahoo.com",
phone_number: "512-305-2555",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id: 8},
{name: "Norris Bergstrom",
email: "burrobros@gmail.com",
phone_number: "357-600-1511",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id: 9},
{name: "Viki Schowalter",
email: "Schowalter.viki1985@aol.com",
phone_number: "655-040-5343",
password_digest: Faker::Internet.password(min_length: 10, max_length: 20, mix_case: true, special_characters: true),
food_truck_id: 10}
])