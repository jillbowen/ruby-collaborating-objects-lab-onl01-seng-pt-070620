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
    existing_artist = self.all.find {|artist| artist.name = name}
      if 
      else
        new_artist = Artist.new(name)
        new_artist
    end
  end
  
end