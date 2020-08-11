# frozen_string_literal: true

# helper method to dipay random spaces on the home page
module FeaturedSpaces
  def features_spaces
    Space.order(Arel.sql('random()')).first(3)
  end
end
