class Artist

  attr_reader :name, :genre
  @@all = []


  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self # might b dodgy
  end


  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
    #terates through all songs and finds
    #the songs that belong to that artist.
   # Try using select to achieve this.
  end

  def genres
    songs.map { |song| song.genre }
    #that iterates over that artist's songs
    #and collects the genre of each song.
  end



end # of class
