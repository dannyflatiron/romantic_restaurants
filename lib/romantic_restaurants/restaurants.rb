require 'pry'
class RomanticRestaurants::Restaurant
  
  attr_accessor :name, :phone_number, :address, :url, :description
  
  def self.all
    self.scrape_restaurants
  end
  
  def self.scrape_restaurants
    restaurants = []
    
    restaurants << self.town_and_country
  end
  
  def self.town_and_country
    doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"))
    
    restaurant_name = @name = doc.css('.listicle-slide-hed').collect{|title| title.css('span')[1].text}
      
    
    restaurant = self.new
    restaurant.name = restaurant_name
    # restaurant.description = doc.search("").text
    # restaurants
    binding.pry
  end
    
  
  
end