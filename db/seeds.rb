# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Molly")
User.create(name: "Ben")
User.create(name: "Roo")

Ingredient.create(name: "milk")
Ingredient.create(name: "cereal")
Ingredient.create(name: "cheese")
Ingredient.create(name: "noodles")
Ingredient.create(name: "flour")
Ingredient.create(name: "butter")
Ingredient.create(name: "sugar")
Ingredient.create(name: "baking soda")
Ingredient.create(name: "egg")
Ingredient.create(name: "chocolate")

Recipe.create(name: "Cereal", user_id: 2, instructions: "Add milk to cereal.")
Recipe.create(name: "Mac n Cheese", user_id: 1, instructions: "Add mac to cheese")
Recipe.create(name: "Cookies", user_id: 3, instructions: "Woof woof.")

RecipeIngredient.create(recipe_id: 1, ingredient_id: 1, amount: 2)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 2, amount: 2)
##
RecipeIngredient.create(recipe_id: 2, ingredient_id: 1, amount: 3)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 3, amount: 7)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 4, amount: 4)
##
RecipeIngredient.create(recipe_id: 3, ingredient_id: 5, amount: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 6, amount: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 7, amount: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 8, amount: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 9, amount: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 10, amount: 3)

Allergy.create(user_id: 1, ingredient_id: 3)
Allergy.create(user_id: 2, ingredient_id: 7)
Allergy.create(user_id: 2, ingredient_id: 5)
Allergy.create(user_id: 3, ingredient_id: 10)

u1 = User.find(1)
u2 = User.find(2)
u3 = User.find(3)

u1.update(bio: "adlkjdofnwef ajnef hdjaoidhj dkaljfaeij.", age: 29, skill_level: "intermediate")
u2.update(bio: "Can you grill cereal? #DAD.", age: 25, skill_level: "beginner")
u3.update(bio: "Bark Bark Bark.", age: 4, skill_level: "expert")