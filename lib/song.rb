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
  def self.new_by_file_name(file_name)
    song_name = file_name.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = artist  
    song 
  end
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    
    
    
     
    