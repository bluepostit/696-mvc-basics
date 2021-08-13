require_relative 'recipe'

pancakes = Recipe.new('pancakes')
p pancakes
pancakes.add_ingredient('flour')
p pancakes
pancakes.add_ingredient('sugar')
p pancakes
pancakes.add_ingredient('milk')
p pancakes
