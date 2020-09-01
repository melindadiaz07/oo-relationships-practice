class Ingredient

    @@all = []
    attr_reader :name, :calories

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
        
    end

   

    def new_dessert(dessert)
        DessertIngredient.new(dessert, self)
    end

    def dessert
       DessertIngredient.all.select{|dessert| dessert.ingredient == self}.map {|di| di.dessert}
    end

    def bakeries
        self.dessert.map {|dessert| dessert.bakery }
    end

    def self.find_all_by_name(ingredient)
      x = self.all.find_all{|ing| ing.name.include?(ingredient)}
     
    end


end