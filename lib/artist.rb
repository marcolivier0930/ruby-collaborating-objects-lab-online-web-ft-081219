# needs a name 
class Artist
  
  @@all = []
  
  attr_accessor :name 
  

  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def songs 
    @songs 
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  def self.find_or_create_by_name(name)
      @@all.find do |artist|
        if artist.name  == name 
          name 
        else
          new_artist =  Artist.new(name)
        end
      end
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end