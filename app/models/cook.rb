class Cook < ActiveRecord::Base
  has_and_belongs_to_many :ingredients

  def self.create_with_ingredients(name, ingredient_names)
    c = self.new(name: name)
    ingredient_names.each do |name|
      ingredients = Ingredient.where("name LIKE ?", "%#{name}%")
      if ingredients.count > 0
        c.ingredients << ingredients
      else
        raise "No '#{name}' Ingredient Error!!"
      end
    end
    c.save
  end
end
