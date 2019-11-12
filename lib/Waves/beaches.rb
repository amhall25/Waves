class Beach
  attr_accessor :name, :address, :rating
  @@all=[]
  
  def self.all
    @@all
  end
end