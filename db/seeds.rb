require 'json'
require 'open-uri'

serialized = URI.open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
JSON.parse(serialized)['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

Cocktail.create(name: "Havana Club")
Cocktail.create(name: "Dry Martini")
