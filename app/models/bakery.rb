require 'pry'

class Bakery

        @@all = []
        attr_reader :name

        def initialize(name)
            @name = name
            @@all << self
        end

        def self.all
            @@all
            
        end

        def ingredients
          Dessert.all.select {|dessert| dessert.bakery == self}
           .map{|dessert| dessert.ingredients }  
        

        def desserts
            self.ingredients.map {|ingredient| ingredient.dessert}
            
        end

        def average_calories
            calories = self.desserts.map {|dessert| dessert.calories}
        end

        def shopping_list
            self.ingredients.map {|ingredient| ingredient}
        end

end