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
    name = doc.search("span.listicle-slide-hed-text").text
    
    name = doc.css('.listicle-slide-hed').collect do |title|
      title.css('span')[1].text
    end
    end

    binding.pry

    restaurant = self.new
    restaurant.name = doc.search("span.listicle-slide-hed-text").first.text
    restaurant.description = doc.search("").text
    restaurants
  end
    
  
  
end