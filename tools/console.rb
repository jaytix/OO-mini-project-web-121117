require_relative '../config/environment.rb'

josh = User.new("Josh")
holly = User.new("holly")
molly = User.new("molly")

carrot = Ingredient.new("carrot")
celery = Ingredient.new("celery")
eggs = Ingredient.new("eggs")
avocado = Ingredient.new("avocado")
garlic = Ingredient.new("garlic")
cabbage = Ingredient.new("cabbage")
orange = Ingredient.new("orange")

recipe0 = Recipe.new("soup")
recipe1 = Recipe.new("soup1")
recipe2 = Recipe.new("soup2")
recipe3 = Recipe.new("soup3")
recipe4 = Recipe.new("soup4")
recipe5 = Recipe.new("soup5")
recipe6 = Recipe.new("soup6")

ri0 = RecipeIngredient.new(carrot, recipe0)
ri1 = RecipeIngredient.new(celery, recipe1)
ri2 = RecipeIngredient.new(eggs, recipe2)
ri3 = RecipeIngredient.new(avocado, recipe3)
ri4 = RecipeIngredient.new(garlic, recipe4)
ri5 = RecipeIngredient.new(cabbage, recipe5)
ri6 = RecipeIngredient.new(orange, recipe6)

rc1 = RecipeCard.new("10/20", 3, josh, recipe0)
rc8 = RecipeCard.new("10/20", 5, josh, recipe1)
rc9 = RecipeCard.new("10/20", 3, josh, recipe2)
rc10 = RecipeCard.new("10/20", 3, josh, recipe3)
rc11 = RecipeCard.new("10/20", 5, josh, recipe4)
rc12 = RecipeCard.new("10/20", 3, josh, recipe5)
rc2 = RecipeCard.new("10/21", 5, holly, recipe0)
rc3 = RecipeCard.new("10/23", 4, molly, recipe0)
rc4 = RecipeCard.new("10/25", 3, molly, recipe1)
rc5 = RecipeCard.new("11/20", 5, josh, recipe6)
rc6 = RecipeCard.new("11/25", 5, molly, recipe3)
rc7 = RecipeCard.new("12/20", 5, molly, recipe2)

allergy0 = Allergen.new(josh, carrot)
allergy1 = Allergen.new(josh, eggs)
allergy2 = Allergen.new(holly, eggs)
allergy3 = Allergen.new(holly, avocado)
allergy4 = Allergen.new(holly, orange)
allergy5 = Allergen.new(holly, garlic)
allergy6 = Allergen.new(molly, eggs)
allergy7 = Allergen.new(molly, avocado)

Ingredient.most_common_allergen


binding.pry
