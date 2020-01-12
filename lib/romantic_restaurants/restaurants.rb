class RomanticRestaurants::Restaurant
  
  def self.today
    # should return a bunch of instances of deals
    puts <<-DOC.gsub /^\s*/, ''
      1. River Cafe
      2. Le Bernadine
    DOC
  end
  
  
end