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
  end
  
  def restaurant_description
    input = nil
    while input != "exit"
    puts ""
    puts "Enter the number of the restaurant that you'd like more info on or type list to see the restaurants again or type exit."
    puts ""
    input = gets.strip.downcase
    
      if input.to_i > 0
        # -1 because I want the array index 
        restaurant_description = @restaurant.description[input.to_i-1]
        restaurant_name = @restaurant.name[input.to_i-1]

        puts ""
        puts "#{restaurant_name}"
        puts "----------------------"
        puts "#{restaurant_description}"
        # binding.pry
        
        elsif input == "list"
          list_restaurants
        elsif input == "exit"
          goodbye
        else
          puts "Note sure what you want, type list or exit."
      end
    end
  end
  
    def goodbye
      puts "See you later."
    end
    
end


