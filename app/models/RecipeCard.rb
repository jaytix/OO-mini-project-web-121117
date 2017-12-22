class RecipeCard
  attr_accessor :date, :rating, :user, :recipe
  @@all = []

  def initialize(date, rating, user, recipe)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    # recipe.users << user
    #user.add_recipe_card()
    @@all << self
  end

  def self.all
    @@all
  end
end
