# create a song class 
# should have a class variable @@all that stores all Song instance in this variable 

class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
    
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.new_by_file_name
    
  end 
end