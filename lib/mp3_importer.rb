class MP3Importer

  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    filename = Dir.children(@path)
    # filename = Dir.glob("*.mp3")
    edit_names = []
    edit_names << filename.each{ |file| file.chomp(".mp3")}
    edit_names
    # filename
  end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
  
end  