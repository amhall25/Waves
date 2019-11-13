class API
  
  

  
  def get_page(zipcode="90210")
    key="nJQJoMGyp75XXUq-S4yDn_viSd3pnGJlSZJvyAeKOxB7H9Dai1n9oNkEencg96PUfO4JAtmzq463toqpzIDX8N01j_rQAI_8PPIfzhDsmxCdjcJKP7eOUPN570DLXXYx"
    url="https://api.yelp.com/v3/businesses/search?location=#{zipcode}&term=beaches"
    doc= HTTParty.get(url, headers: {'Authorization' => "Bearer #{key}"})
    binding.pry
  end
end
    