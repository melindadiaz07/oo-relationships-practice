class Dessert

    @@all = []
    attr_accessor :name, :bakery, :ingredients

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def new_ingredient(ingredient)
        DessertIngredient.new(self, ingredient)
    end


    def ingredients
      DessertIngredient.all.select {|di| di.dessert == self}
      .map{|di| di.ingredient}
    end
   

    def calories
       calories_array = self.ingredients.map {|ingredient| ingredient.calories }
        calories_total = calories_array.inject(:+)
        average = calories_total/calories_array.length
    end


end


