require 'pry'

class Artist
    attr_accessor :name, :songs, :add_song

    @@all = []

    def initialize(name)
        @name = name
        @all =[]
        @@all << self
    end

    def add_song(song)
        @all << song
    end

    def songs
        @all
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(artist_name)
        # binding.pry
        if self.all.find {|artist| artist.name == artist_name} != nil
            # binding.pry
        self.all.find do |artist| 
            # binding.pry
            artist.name == self
           artist.name
            end
        else
       artist_name = Artist.new(artist_name)
    #    binding.pry
    #   self.save
       artist_name
       
        end
        # binding.pry
    end

    def print_songs
        songs.each do |song|
            puts song.name
        end
    end


end