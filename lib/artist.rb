class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @song = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @song << song
  end
  
  def songs
    @song 
  end
  
  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name = name}
      
    else
      new_artist = Artist.new(name)
      new_artist
    end
  end
  
end