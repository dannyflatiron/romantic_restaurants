#CLI Controller

class RomanticRestaurants::CLI
  
  def call
    list_restaurants
    restaurant_description
    contact_information
    goodbye
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
    input = nil
    while input != "exit"
    puts "Enter the number of the restaurant that you'd like more info on or type list to see the restaurants again or type exit."
    input = gets.strip.downcase
      case input
      when "1"
        puts "More info on restaurant 1..."
      when "2"
        puts "More info on restaurant 2..."
      when "3"
        puts "More info on restaurant 3..."
      when "list"
        list_restaurants
      end
    end
  end
  
  def contact_information
    puts "Enter number to get restaurant's contact information"
    input = nil
    while input != "exit"
    input = gets.strip.downcase
      case input
      when "1"
        puts "Contact information on 1..."
      when "2"
        puts "Contact information on 2..."
      when "3"
        puts "Contact informaiton on 3..."
      when "4"
        puts "Contact information on 4..."
      end
    end
    
    def goodbye
      puts "See you later."
      
    end
    
  end
  
end