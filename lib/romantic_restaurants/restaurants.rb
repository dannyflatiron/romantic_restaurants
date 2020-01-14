require 'pry'
class RomanticRestaurants::Restaurant
  
  attr_accessor :name, :phone_number, :address, :url, :description
  
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
    doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"))
    
    restaurant_name = doc.css('.listicle-slide-hed').collect{|title| title.css('span')[1].text}
    restaurant_description = doc.css('.listicle-slide-dek').collect{|t| t.text}
      
           

    restaurant = self.new
    restaurant.name = restaurant_name
    restaurant.description = restaurant_description
    # binding.pry
    restaurant
  end
    
  
  
end