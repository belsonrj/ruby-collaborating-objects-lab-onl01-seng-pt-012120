class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs= []
<<<<<<< HEAD
    @@all << self
=======
    @@all << save
>>>>>>> 5503f860358f4b1a62344a71df353175878bed84
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def songs
    @songs
  end

<<<<<<< HEAD
  def save
    @@all << self
    self
  end

=======
>>>>>>> 5503f860358f4b1a62344a71df353175878bed84
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name).save
  end

  def print_songs
    self.songs.each {|song| puts song.name} 
   end
end