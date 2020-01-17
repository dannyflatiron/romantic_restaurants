require 'pry'
class RomanticRestaurants::Restaurant < Scraper
  
  attr_accessor :name, :description
  
  # create initialize method 
  # with instance variables name and description
  # do I need to create a name and description instance methods 
  # or just one method performing both functions?
  # I would also need a self.all method
  
  @@all = []
  
  def initialize(name, description)
    @name = @@restaurant_name
    @description = @@restaurant_description
    binding.pry
  #   self.new = (Scraper.restaurant_name, Scraper.restaurant_description) 
  # self
          

    # self.new = (restaurant_name, restaurant_description)
    # @@all << self
    # binding.pry
  end
  
  
  def self.all
    @@all
  end
           

    restaurant = self.new(name, description)
    restaurant_name = restaurant.name
    restaurant_description = restaurant.description
    # restaurant.name = restaurant_name
    # restaurant.description = restaurant_description
    # binding.pry
    restaurant
  
    
  
  
end