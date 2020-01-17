#CLI Controller
require 'pry'
class RomanticRestaurants::CLI
  
  def call
    list_restaurants
    restaurant_description 
    
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
    puts "Enter the number of the restaurant that you'd like more info on type 'exit' to leave."
  end
  
  def restaurant_description
    puts ""
      
    puts ""
    
    input = nil
    
    while input != "exit"
    
    input = gets.strip.downcase
                    # binding.pry

      if input.to_i > 0 && input.to_i < @restaurant.name.length+1

        # -1 because I want the array index 
        restaurant_description = @restaurant.description[input.to_i-1]
        restaurant_name = @restaurant.name[input.to_i-1]

        puts ""
        puts "#{restaurant_name}"
        puts "----------------------"
        puts "#{restaurant_description}"
        puts ""
        puts "Enter another number to discover more or type list to view the restaurants or  'exit'"
        puts ""
        elsif input == "list"
          list_restaurants
          puts ""
        elsif input == "exit"
          goodbye
        else
          puts ""
          puts "Not sure what you want. Please enter an available number from the list or enter 'exit' to leave."
          puts ""
      end
    end
  end
  
    def goodbye
      puts ""
      puts "See you later."
    end
    
end


