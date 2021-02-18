require 'json'
require 'open-uri'

serialized = URI.open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
JSON.parse(serialized)['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

Cocktail.create(name: "Havana Club", image_url: 'http://alkoholecapone.pl/wp-content/uploads/2016/09/Havana-Club-3.jpg')
Cocktail.create(name: "Dry Martini", image_url: 'https://www.annatomasmoreno.com/wp-content/uploads/2015/01/DRY-MARTINI-2.jpg')
