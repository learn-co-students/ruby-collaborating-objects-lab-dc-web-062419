require 'pry'
class Song
  @@all = []

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @artist
    self.class.all << self
  end

  def self.new_by_filename(name)
    file_name = name.split(' - ')
    song = Song.new(file_name[1])
    artist = Artist.find_or_create_by_name(file_name[0])
    song.artist = artist
    Artist.all << artist
    return song
  end

  def self.all
    @@all
  end
end