require 'pry'

class Song
    
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end


    def self.new_by_filename(file_name)
         artist, song_name = file_name.split(" - ")
         new_song = self.new(song_name)
        #   binding.pry
          artist1 = Artist.find_or_create_by_name(artist)
          new_song.artist = artist1
          artist1.add_song(new_song)
          new_song
        # binding.pry
    end

end