class Recipe

  @@all = []
  attr_accessor :recipe_name

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    count = 0
    popular_recipe = ""
    Recipe.all.each do |recipe|
      if recipe.users.length > count
        count = recipe.users.length
        popular_recipe = recipe
      end
    end
    popular_recipe
    #should return the recipe instance with the
    # highest number of users
    # (the recipe that has the most recipe cards)
  end

  def users
    recipe_cards = RecipeCard.all.select {|re| re.recipe == self}
    recipe_cards.map {|card| card.user}
    # RecipeCard.all..each do |rec|
    #   rec.
    # end  #some kind of filter or select
    #should return the user instances who
    #have recipe cards with this recipe
  end

  def ingredients
    recipe_ingredient = RecipeIngredient.all.select {|ingre| ingre.recipe == self}
    recipe_ingredient.map {|card| card.ingredient}
    #iterate recipe
    #should return all of the ingredients in this recipe
  end

  def allergens
    #should return all of the ingredients
    #in this recipe that are allergens
  end

  def add_ingredients(array)
    array.each {|ingredient| RecipeIngredient.new(ingredient, self)}
    self.ingredients
    #should take an array of ingredient
    # instances as an argument,
    # and associate each of those ingredients with this recipe
  end

end
