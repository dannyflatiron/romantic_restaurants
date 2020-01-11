#CLI Controller

class RomanticRestaurants::CLI
  
  def call
    puts "Restaurant list"
    list_restaurants
  end
  
  def list_restaurants
    puts <<-DOC.gsub /^\s*/, ''
      1. River Cafe
      2. Le Bernadine
    DOC
  end
  end
  
end