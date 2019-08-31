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
    file = Dir.entries(@path)
    file.each do |file|
      if file.include?("mp3")
        @files << file 
      end
    end
    @files 
  end
end 