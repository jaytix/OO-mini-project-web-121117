class User
  @@all = []
  attr_accessor :user_name

  def initialize(user_name)
    @user_name = user_name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    recipe_cards = RecipeCard.all.select {|re| re.user == self}
    recipe_cards.map {|card| card.recipe}
    #should return all of the recipes this user has recipe cards for
  end

  def add_recipe_card(recipe, rating=nil)
    self.recipes << recipe
    recipe.users << self
    date = Time.now
    new_recipecard = RecipeCard.new(date, rating, self, recipe)

    #should accept a recipe instance as an argument,
    # as well as a date and rating, and create a new
    # recipe card for this user and the given recipe
  end

  def declare_allergen
    # should accept an ingredient instance as an argument,
    # and create a new allergen instance for this user and
    # the given ingredient
  end

  def allergens
    #should return all of the ingredients this user is allergic to
  end

  def top_three_recipes
    recipe_cards = RecipeCard.all.select {|re| re.user == self}
    sorted = recipe_cards.sort_by! {|card| card.rating}
    sorted_array = sorted.map {|card| card.recipe}
    sorted_array.slice(-3..-1)
    #should return the top three highest rated recipes for this user.
  end

  def most_recent_recipe
    recipe_cards = RecipeCard.all.select {|re| re.user == self}
    sorted = recipe_cards.sort_by! {|card| card.date}
    sorted_array = sorted.map {|card| card.recipe}
    sorted_array.pop
    #should return the recipe most recently added to the user's cookbook.
  end


end
