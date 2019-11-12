class Scrapper
  
  

  
  def get_page(zipcode="90210")
    
    doc= Nokogiri::HTML(open("http://www.yelp.com/search?find_desc=beaches&find_loc=#{zipcode}"))
    binding.pry
  end
end
    