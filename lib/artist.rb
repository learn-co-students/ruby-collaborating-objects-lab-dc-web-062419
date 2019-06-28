require 'pry'
class Artist
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    # self.class.all << self
  end

  def self.find_or_create_by_name(artist_name)
    if self.all.find {|artist| artist.name == artist_name } != nil then self.all.find {|artist| artist.name == artist_name } else Artist.new(artist_name) end
  end

  def print_songs
    Song.all.each { |song| if song.artist == self then puts song.name end }
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def save
   self.class.all << self
  end

  def self.all
    @@all
  end
end