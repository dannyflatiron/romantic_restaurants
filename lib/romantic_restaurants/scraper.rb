require 'pry'

class Scraper
  
  # doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"))
  
  # def self.scrape_names
  #   restaurant_name = doc.css('.listicle-slide-hed').collect{|title| title.css('span')[1].text.strip}
  # end
  
  # def self.scrape_descriptions
  #   restaurant_description = doc.css('.listicle-slide-dek').collect{|t| t.text.strip}
  # end
  
  def self.scrape
   
    # doc = Nokogiri::HTML(open("https://www.townandcountrymag.com/leisure/dining/g3177/most-romantic-restaurants-in-new-york-city/"))
    # restaurants = []
    # names_and_descriptions = doc.css('.listicle-body-content').each do |restaurant|
        
    #   end
      
    #   # text.gsub(/[\n\t]/, "")
    # binding.pry
     
    @@restaurant_name = doc.css('.listicle-slide-hed').collect{|title| title.css('span')[1].text.strip}
    @@restaurant_description = doc.css('.listicle-slide-dek').collect{|t| t.text.strip}
  end   
  
end