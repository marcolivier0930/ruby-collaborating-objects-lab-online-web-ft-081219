# parse filenames and send them to Song class 
# should have a path attribute that gets set on initialization 
# needs two method, # file and #import
class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end
  
  def files 
    @files = []
    file = dir.entries(@path)
    
  end
end 