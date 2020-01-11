#CLI Controller

class RomanticRestaurants::CLI
  
  def call
    list_restaurants
    restaurant_description
  end
  
  def list_restaurants
    puts "Restaurant list"
    puts <<-DOC.gsub /^\s*/, ''
      1. River Cafe
      2. Le Bernadine
    DOC
  end
  end
  
  def restaurant_description
    puts "Enter the number of the restaurant that you'd like more info on
    input = gets.strip
    case input
    when "1"
      puts "More info on restaurant 1..."
    when "2"
      puts "More info on restaurant 2..."
    when "3"
      puts "More info on restaurant 3..."
    end
  end
  
end