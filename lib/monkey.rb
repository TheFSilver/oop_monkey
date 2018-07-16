class Monkey

  attr_reader :name, :species, :foods_eaten

  def initialize(name, species)
    @name = name.capitalize
    @species = species
    @foods_eaten = []
  end

  def eat(food)
    vowels = ["a", "e", "i", "o", "u", "y"]
    unless vowels.any? { |vowel| food.chr.include?(vowel)}
      @foods_eaten << food
    end
  end
  
  def introduce
    "#{@name} is a #{@species} which eats #{@foods_eaten}"
  end
  
end
