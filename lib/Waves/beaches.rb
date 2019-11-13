class Beach
  attr_accessor :name, :address, :rating
  @@all = []
  
  def initialize (name, address, rating)
    @name = name
    @address = address
    @rating = rating
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all=[]
  end
end