# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
User.find_or_create_by(email: "stevemcbride3@gmail.com", name: "Stephen McBride", password: "test")
User.find_or_create_by(email: "adrian88@example.com", name: "Adrian Kaufman", password: "daylight pound darwinism upscale")
User.find_or_create_by(email: "westeats@example.com", name: "Doris West", password: "variable wreckage extent suburb")
User.find_or_create_by(email: "cristianh@example.com", name: "Cristian Heath", password: "jukebox angling simplify hankering")
User.find_or_create_by(email: "cheyanne.f@example.com", name: "Samiya Phelps", password: "snooper enlisted dust frigidity")
User.find_or_create_by(email: "carlos01@example.com", name: "Carlos Parsons", password: "handcuff womanhood rectify jubilant")
User.find_or_create_by(email: "dbauer@example.com", name: "Dina Bauer", password: "skincare tanned valley recognize")
User.find_or_create_by(email: "niam@example.com", name: "Niam Hurst", password: "previous pelt fasting culture")
User.find_or_create_by(email: "marshab@example.com", name: "Marsha Black", password: "reputable strobe education sprang")
User.find_or_create_by(email: "zandrade@example.com", name: "Zhane Andrade", password: "overstock triangle trimester occupier")
User.find_or_create_by(email: "reese@example.com", name: "Reese Farrow", password: "riptide coyness endorse shout")

#Restaurants
Restaurant.find_or_create_by(
    name: "Test Restaurant", 
    description: "This is a test restaurant used for testing during development.", 
    website: "example.com", 
    phone_number: "401-400-4000", 
    address: "900 Elmwood Ave. Providence, RI 02907", 
    user_id: 1
    )

Restaurant.find_or_create_by(
    name: "West Eats", 
    description: "Best diner in Tallahassee! From burgers to wraps, we have everything to satisfy your appetite.", 
    website: "westeats.com", 
    phone_number: "213-366-5453", 
    address: "22 Oak Ave. Tallahasee, FL 32303", 
    user_id: 3
    )
    
Restaurant.find_or_create_by(
    name: "", 
    description: "", 
    website: "", 
    phone_number: "319-482-2729", 
    address: "4272 Pyramid Valley Road Aguanga, CA 92536", 
    user_id: 1
    )
    
# Restaurant.find_or_create_by(
#     name: "", 
#     description: "", 
#     website: "", 
#     phone_number: "", 
#     address: "", 
#     user_id: 1
#     )

# Restaurant.find_or_create_by(
#     name: "", 
#     description: "", 
#     website: "", 
#     phone_number: "", 
#     address: "", 
#     user_id: 1
#     )