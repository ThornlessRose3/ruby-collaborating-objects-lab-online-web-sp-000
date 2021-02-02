class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    filename = Dir.children(@path)
    puts filename
    filename = Dir.glob("*.mP3")
    puts filename
    puts "This is the start "
    puts filename
    filename = filename.split(".mp3")
    filename
  end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
  
end  