require 'pry'
class RomanticRestaurants::Restaurant
  
  attr_accessor :name, :description
  # this is unnecessary 
  
  def self.all
    self.scrape_restaurants
  end
  
  # this should be called self.all
  def self.scrape_restaurants
    restaurants = nil
    
    restaurants = self.town_and_country
    restaurants
        # binding.pry

  end
  
  # this should be moved to a different file called RomanticRestaurants::Scraper
  # method should be called scrape_restaurants
  
  def self.town_and_country
    # should be called def self.scrape_webpage
    doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"))
    
    restaurant_name = doc.css('.listicle-slide-hed').collect{|title| title.css('span')[1].text.strip}
    restaurant_description = doc.css('.listicle-slide-dek').collect{|t| t.text.strip}
      
           
    # this can possibly be stored in a different method called # create_restaurant
    # this should stay in this class doc called restaurants.rb
    restaurant = self.new
    restaurant.name = restaurant_name
    restaurant.description = restaurant_description
    # binding.pry
    restaurant
  end
    
  
  
end