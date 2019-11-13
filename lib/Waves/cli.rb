class Waves::CLI 
  def call
    puts "welcome to Waves, enter the zip code you wish to know more about"
    
    @zipcode = gets.chomp
    fetch
  end
  
  def fetch
    API.new.get_page(@zipcode)
    
    Beach.all.each do |beach|
      puts beach.name
    end
    
  end
  
end