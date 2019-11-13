class API
  
  

  
  def get_page(zipcode="90210")
    url="https://api.yelp.com/v3/businesses/search?location=#{zipcode}&term=beaches"
    doc= HTTParty.get(url)
    binding.pry
  end
end
    