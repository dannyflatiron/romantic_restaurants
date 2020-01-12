class RomanticRestaurants::Restaurant
  
  def self.today
    # should return a bunch of instances of deals
    puts <<-DOC.gsub /^\s*/, ''
      1. River Cafe
      2. Le Bernadine
    DOC
    restaurant_1 = self.new
    restaurant_1.name = "Le Bernadine"
    restaurant_1.contact = "917_327-2845"
  end
  
  
end