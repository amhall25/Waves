class Waves::CLI 
  def call
    puts "Welcome to Waves, enter the zip code where you'd like a list of the closest beaches."
    
    @zipcode = gets.chomp
    until @zipcode.length == 5 && @zipcode.to_i != 0
      puts "Please be sure to enter a 5 digit zipcode. Enter now."
      @zipcode = gets.chomp
    end
    fetch
    info
  end
  
  def info
    puts "Chose a beach you'd like to know the address and rating."
    number = gets.chomp
    information(number)
  end
  
  def fetch
    API.new.get_page(@zipcode)
    
    Beach.all.each.with_index(1) do |beach, i|
      puts "#{i}. " + beach.name
    end
  end
  
  def information(number)
    
    i=number.to_i-1
    name = Beach.all[i].name
    address = Beach.all[i].address
    rating = Beach.all[i].rating
    puts "#{name} is located at #{address} and has a #{rating} out of 5 rating." 
    
    puts "Press 1 to get more information about a beach at this zipcode. Enter 2 to choose a new zipcode. Press any other 
    number to exit."
    
    option = gets.chomp
      if option.to_i == 1
        info
      elsif option.to_i == 2
       Beach.clear_all
       call
      else
        puts "Goodbye, thank you for using Waves."
        exit
      end
  end
  
      
  
end