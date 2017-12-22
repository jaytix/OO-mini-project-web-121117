require 'pry'
class Ingredient

  @@all = []
  attr_reader :ingredient

  def initialize(ingredient)
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    hash = Hash.new(0)
    h = Allergen.all.each do |x|
        hash[x.ingredient] += 1
    end
    max_value = hash.max_by{|key, value| value}
      max_value[0]
  end

  def users
    allergy = Allergen.all.select {|re| re.ingredient == self}
    allergy.map {|card| card.ingredient}
  end

end
