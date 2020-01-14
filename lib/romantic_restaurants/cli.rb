#CLI Controller
require 'pry'
class RomanticRestaurants::CLI
  
  def call
    list_restaurants
    restaurant_description
    # contact_information
    goodbye
  end
  
  def list_restaurants
    puts "Restaurant list"
    puts ""
    puts "----------------------------------"
    puts ""
    @restaurant = RomanticRestaurants::Restaurant.all
    # @restaurant.each {|r| r.name}
    @restaurant.name.each.with_index(1) do |restaurant, r|
      puts "#{r}. #{restaurant}"
    end
    puts ""
  end
  
  def restaurant_description
    input = nil
    while input != "exit"
    puts "Enter the number of the restaurant that you'd like more info on or type list to see the restaurants again or type exit."
    input = gets.strip.downcase
    
      if input.to_i > 0
        # -1 because I want the array index 
        restaurant = @restaurant.description[input.to_i-1]
        
        puts "#{restaurant}"
        elsif input == "list"
          list_restaurants
          
        else
          puts "Note sure what you want, type list or exit."
      end
    end
  end
  
  # def contact_information
  #   puts "Enter number to get restaurant's contact information"
  #   input = nil
  #   while input != "exit"
  #   input = gets.strip.downcase
    
  #     if input.to_a > 0
  #       restaurant = @restaurant[input.to_i-1]
  #       puts "#{restaurant.address} - #{restaurant.phone_number}"
  #     case input
  #     when "1"
  #       puts "Contact information on 1..."
  #     when "2"
  #       puts "Contact information on 2..."
  #     when "3"
  #       puts "Contact informaiton on 3..."
  #     when "4"
  #       puts "Contact information on 4..."
  #     end
  #     end
  #   end
  # end
    
    def goodbye
      puts "See you later."
      
    end
    
end


