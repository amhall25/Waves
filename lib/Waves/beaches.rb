class Beach
  attr_accessor :name, :address, :rating
  @@all = []
  
  def initialize (name, address, rating)
    @name = name
    @address = address
    @rating = rating
  end
  
  def self.all
    @@all
  end
end