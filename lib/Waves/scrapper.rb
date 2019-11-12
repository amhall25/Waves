class Scrapper
  
  

  
  def get_page(zipcode="90210")
    
    doc= Nokogiri::HTML(open("https://www.yelp.com/search?find_desc=beaches&find_loc=#{zipcode}&ns=1"))
    binding.pry
  end
end
    