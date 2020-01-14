require 'pry'
class RomanticRestaurants::Restaurant
  
  attr_accessor :name, :phone_number, :address, :url, :description
  
  def self.all
    self.scrape_restaurants
  end
  
  def self.scrape_restaurants
    restaurants = nil
    
    restaurants = self.town_and_country
        # binding.pry

  end
  
  def self.town_and_country
    doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"))
    
    restaurant_name = doc.css('.listicle-slide-hed').collect{|title| title.css('span')[1].text}
      
            # binding.pry

    restaurant = self.new
    restaurant.name = restaurant_name
    # restaurant.description = doc.search("").text
    # restaurants
  end
    
  
  
end