class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.children(@path)
    filename = Dir.glob("*.mp3")
    puts "This is the start "
    puts filename
    filename = filename.split(".mp3")
    filename
  end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
  
end  