require 'pry'
class RomanticRestaurants::Restaurant
  
  attr_accessor :name, :description
  
  # create initialize method 
  # with instance variables name and description
  # do I need to create a name and description instance methods 
  # or just one method performing both functions?
  # I would also need a self.all method
  
  def initialize(name = nil, description = nil)
    @name 
    @description
  end
  
  
  def self.all
    self.scrape_restaurants
  end
  
  def self.scrape_restaurants
    restaurants = nil
    
    restaurants = self.town_and_country
    restaurants
        # binding.pry

  end
  
  def self.town_and_country
   
      
           

    restaurant = self.new(name, description)
    restaurant_name = restaurant.name
    restaurant_description = restaurant.description
    # restaurant.name = restaurant_name
    # restaurant.description = restaurant_description
    # binding.pry
    restaurant
  end
    
  
  
end