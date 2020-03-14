class Song
  attr_accessor :name, :artist
<<<<<<< HEAD
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
=======

  def initialize(name)
    @name = name
>>>>>>> 5503f860358f4b1a62344a71df353175878bed84
  end

  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end
<<<<<<< HEAD
  
  def self.all 
    @@all 
  end
  
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
=======
>>>>>>> 5503f860358f4b1a62344a71df353175878bed84
end
