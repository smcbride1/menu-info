# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Tags
Tag.create(name: "Dairy Free")
Tag.create(name: "Egg Free")
Tag.create(name: "Fish Free")
Tag.create(name: "Shellfish Free")
Tag.create(name: "Tree Nut Free")
Tag.create(name: "Peanut Free")
Tag.create(name: "Wheat Free")
Tag.create(name: "Soy Free")
Tag.create(name: "Gluten Free")
Tag.create(name: "Vegan")
Tag.create(name: "Vegetarian")
Tag.create(name: "Pescatarian")
Tag.create(name: "Pollotarian")
Tag.create(name: "Kosher")
Tag.create(name: "Halal")

#Users
User.create(email: "test@gmail.com", name: "Test User", password: "test")
User.create(email: "adrian88@example.com", name: "Adrian Kaufman", password: "daylight pound darwinism upscale")
User.create(email: "westeats@example.com", name: "Doris West", password: "variable wreckage extent suburb")
User.create(email: "cristianh@example.com", name: "Cristian Heath", password: "jukebox angling simplify hankering")
User.create(email: "sphelps@example.com", name: "Samiya Phelps", password: "snooper enlisted dust frigidity")
User.create(email: "carlos01@example.com", name: "Carlos Parsons", password: "handcuff womanhood rectify jubilant")
User.create(email: "dbauer@example.com", name: "Dina Bauer", password: "skincare tanned valley recognize")
User.create(email: "niam@example.com", name: "Niam Hurst", password: "previous pelt fasting culture")
User.create(email: "marshab@example.com", name: "Marsha Black", password: "reputable strobe education sprang")
User.create(email: "zandrade@example.com", name: "Zhane Andrade", password: "overstock triangle trimester occupier")
User.create(email: "reese@example.com", name: "Reese Farrow", password: "riptide coyness endorse shout")

#Restaurants
Restaurant.create(
    name: "Kaufman's Cakes", 
    description: "Bakery that also serves fresh meals", 
    website: "kaufmanscakes-ca.com", 
    phone_number: "319-482-2729", 
    address: "4272 Pyramid Valley Road Aguanga, CA 92536", 
    user_id: 2
    )

Restaurant.create(
    name: "West Eats", 
    description: "Best diner in Tallahassee! From burgers to wraps, we have everything to satisfy your appetite.", 
    website: "westeats.com", 
    phone_number: "213-366-5453", 
    address: "22 Oak Ave. Tallahasee, FL 32303", 
    user_id: 3
    )
    
Restaurant.create(
    name: "Frozone Treats", 
    description: "Frozon desserts ranging from ice cream to ice cream cake. Don't forget your super suit!", 
    website: "fzonetreats.com", 
    phone_number: "865-405-8366", 
    address: "2086 Rosewood Lane New York, NY 10019", 
    user_id: 4
    )

Restaurant.create(
    name: "Country Hometown Diner", 
    description: "A cozy diner in the center of town. Here, you're always welcome!", 
    website: "thehometowndiner.net", 
    phone_number: "479-925-2413", 
    address: "2641 Cambridge Court Rogers, Arkansas 72756", 
    user_id: 5
    )
    
Restaurant.create(
    name: "The Wylie Deli", 
    description: "If you can dream up the perfect sandwich, we can make it.", 
    website: "", 
    phone_number: "972-442-7134", 
    address: "2842 Whispering Pines Circle Wylie, TX 75098", 
    user_id: 6
    )
    
Restaurant.create(
    name: "Restaurant on The Hill", 
    description: "Kansas' best Italian restaurant. Plain and simple.", 
    website: "thehillrestaurant.com", 
    phone_number: "405-923-0366", 
    address: "432 Meadow Drive DIGHTON, KS 67839", 
    user_id: 7
    )
    
Restaurant.create(
    name: "Jacksonville Wings", 
    description: "Long day at the office? Thank goodness it's Friday. Stop by and feast on our signature reaper wings!", 
    website: "jvillewings.com", 
    phone_number: "630-294-5617", 
    address: "3052 Arrowood Drive, Jacksonville FL 32202", 
    user_id: 8
    )
    
Restaurant.create(
    name: "Planet Vegan", 
    description: "Ohio's best vegan restaurant, hands down. Food that everyone, not just vegans, loves.", 
    website: "planetvegan.com", 
    phone_number: "937-276-8839", 
    address: "795 Despard Street MILLERSPORT OH, 43046", 
    user_id: 9
    )
    
Restaurant.create(
    name: "The Walnut Grill", 
    description: "We have a wide range of halal foods, so come eat with us!", 
    website: "walnutgrill.com", 
    phone_number: "310-430-3616", 
    address: "3528 Walnut Hill Drive Cincinnati OH, 45202", 
    user_id: 10
    )
    
Restaurant.create(
    name: "Dehli Kitchen", 
    description: "Great Indian eats with plenty of gluten-free options.", 
    website: "dehlikitchen.com", 
    phone_number: "603-647-7579", 
    address: "789 Elliott Street Manchester, NH 03101", 
    user_id: 11
    )

#Menus
Menu.create(
    name: "Cakes", 
    description: "Our pre-made cakes menu. If you want a custom cake, please contact us.", 
    restaurant_id: 1
    )

Menu.create(
    name: "Sandwiches", 
    description: "Sandwiches made with fresh-baked bread. Warm right out of the oven!", 
    restaurant_id: 5
    )

Menu.create(
    name: "Breakfast Menu", 
    description: "All of our breakfast meals.", 
    restaurant_id: 4
    )

Menu.create(
    name: "Main Menu", 
    description: "Our main menu.", 
    restaurant_id: 6
    )

Menu.create(
    name: "Fried Menu", 
    description: "Everything tastes better fried.", 
    restaurant_id: 8
    )

Menu.create(
    name: "Kebabs", 
    description: "Our wide range of kebabs.", 
    restaurant_id: 9
    )

Menu.create(
    name: "Main Menu", 
    description: "Our main menu.", 
    restaurant_id: 10
    )
    
#MenuItems
MenuItem.create(
    name: "BLT", 
    price: 8.00, 
    description: "Bacon, lettuce, and tomato sandwich.", 
    menu_id: 2
    )

MenuItem.create(
    name: "Monte Cristo", 
    price: 12.00, 
    description: "Made with ham and cheese and dipped in egg.", 
    menu_id: 2
    )

MenuItem.create(
    name: "Bacon, Egg, and Cheese", 
    price: 6.00, 
    description: "Simple and portable, great for grab and go!", 
    menu_id: 3
    )

MenuItem.create(
    name: "Rigatoni with Vodka Sauce", 
    price: 22.00, 
    description: "Rigatoni with a garlic and basic sauce.", 
    menu_id: 4
    )

MenuItem.create(
    name: "Deep Fried Eggplant", 
    price: 12.00, 
    description: "Who doesn't like fried eggplant?", 
    menu_id: 5
    )

MenuItem.create(
    name: "Chicken Kebab", 
    price: 15.00, 
    description: "Chicken Kebab with various vegetables.", 
    menu_id: 6
    )

MenuItem.create(
    name: "Bombay Potatoes", 
    price: 16.00, 
    description: "Spicy potatoes covered in juicy tomatoes.", 
    menu_id: 7
    )

#MenuItemTags
MenuItem.find(1).tags.push(Tag.find(3), Tag.find(4), Tag.find(5), Tag.find(6))
MenuItem.find(2).tags.push(Tag.find(3), Tag.find(4), Tag.find(5), Tag.find(6))
MenuItem.find(3).tags.push(Tag.find(3), Tag.find(4), Tag.find(5), Tag.find(6))
MenuItem.find(4).tags.push(Tag.find(1), Tag.find(2), Tag.find(3), Tag.find(4), Tag.find(5), Tag.find(6), Tag.find(8), Tag.find(10), Tag.find(11))
MenuItem.find(5).tags.push(Tag.find(1), Tag.find(2), Tag.find(3), Tag.find(4), Tag.find(5), Tag.find(6), Tag.find(8), Tag.find(10), Tag.find(11))
MenuItem.find(6).tags.push(Tag.find(1), Tag.find(2), Tag.find(3), Tag.find(4), Tag.find(7), Tag.find(8), Tag.find(9), Tag.find(15))
MenuItem.find(7).tags.push(Tag.find(1), Tag.find(2), Tag.find(3), Tag.find(4), Tag.find(5), Tag.find(6), Tag.find(7), Tag.find(8), Tag.find(9), Tag.find(10), Tag.find(11), Tag.find(12), Tag.find(13))