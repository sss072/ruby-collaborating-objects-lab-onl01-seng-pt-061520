class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end
  def self.all 
    @@all 
  end
  def add_song(song)
    song.artist = self 
  end
  def songs 
    Song.all.select do |element|
      element.artist == self 
    end 
  end
  def self.find_or_create_by_name(name_given)
    self.  
  end
  def print_songs
    Song.all.each do |element|
      puts element.name if element.artist == self 
    end
  end
  
    
      