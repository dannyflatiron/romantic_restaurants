require 'pry'
class RomanticRestaurants::Restaurant
  
  attr_accessor :name, :phone_number, :address, :url, :description
  
  def self.all
    self.scrape_restaurants
  end
  
  def self.scrape_restaurants
    restaurants = []
    
    restaurants << self
  end
  
  def self.town_and_country
    doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"))
    
    restaurant = self.new
    restaurant.name = doc.search("").text
    restaurant.description = doc.search("").text
    
    restaurants
  end
    
  
  
end