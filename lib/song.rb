require 'pry'

class Song
  def initialize(name)
    @name = name
    @artist
  end

  attr_accessor :name, :artist
  
  def self.new_by_filename(name)
    file_name = name.split(' - ')
    song = Song.new(file_name[1])
    artist = Artist.find_or_create_by_name(file_name[0])
    song.artist = artist
    return song
  end
end