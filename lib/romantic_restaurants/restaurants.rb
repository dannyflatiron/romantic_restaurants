class RomanticRestaurants::Restaurant
  
  def self.all
    # should return a bunch of instances of deals
    puts <<-DOC.gsub /^\s*/, ''
      1. River Cafe
      2. Le Bernadine
    DOC
    restaurant_1 = self.new
    restaurant_1.name = "Le Bernadine"
    restaurant_1.phone_number = "917_327-2845"
    restaurant_1.address = "2361 Nostrand ave"
    restaurant_1.url = "https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"
    
    restaurant_2 = self.new
    restaurant_2.name = "River Cafe"
    restaurant_2.phone_number = "718-337-1804"
    restaurant_2.address = "2222 cornaga ave"
    restaurant_2.url = "https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"
  end
    
  [restaurant_1, restaurant_2]
  
end