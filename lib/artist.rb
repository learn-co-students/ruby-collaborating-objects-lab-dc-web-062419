class Artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  attr_accessor :name, :songs

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    @@all.find do |artist|
      if artist.name == name
        return artist
      else
        artist = Artist.new(name)
        artist.save
        return artist
      end
    end
  end

 




end