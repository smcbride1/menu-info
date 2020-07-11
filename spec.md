# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    * Restaurant has_many Menus
    * Menu has_many MenuItems
    * User has_many Restaurants

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    * Menu belongs_to Restaurant
    * MenuItem belongs_to menu
    * Restaurant belongs_to User

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    * Restaurant has_many MenuItems, through: Menus
    * Menu has_many Tags, through: MenuItemsTags

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    * Menu has_many Tags through MenuItems
    * Tag has_many Menus through MenuItems

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    * Menu has_many Tags through MenuItems (menu_item.name)
    * Tag has_many Menus through MenuItems (menu_item.name)

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    * Validates presence, length, range, numericality, email (URI validator)
    
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    * menu_items.dollar_menu
    * menu_items.under_five
    * menu_items.under_ten
    * menu_items.under_twenty

- [x] Include signup (how e.g. Devise)
    * get /register

- [x] Include login (how e.g. Devise)
    * get /login

- [x] Include logout (how e.g. Devise)
    * post /logout

- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    * Facebook OAuth

- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    * restaurants/1/menus
    * restaurants/1/menus/1
    * menus/1/menu_items
    * menus/1/menu_items/1

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    * restaurants/1/menus/new

- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate