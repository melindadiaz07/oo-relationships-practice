class DessertIngredient

    @@all = []
    attr_accessor :dessert, :ingredient

    def initialize(dessert, ingredient)
        @dessert = dessert
        @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
        binding.pry
    end




end