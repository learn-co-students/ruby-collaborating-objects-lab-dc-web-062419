require "pry"

class Artist
    @@all = []

    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        self.class.all << self
    end
    def songs
        @songs
    end
    def add_song(song)
        song.artist = self
       @songs << song
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
    def self.find_or_create_by_name(artist_name)
        x = @@all.find {|artist| artist.name == artist_name}
        if x == nil 
            Artist.new(artist_name)
        else 
            x
        end
            #     artist.name 
            # else 
            #     self.create(artist_name)
            # end
            # binding.pry

        # end
        # @@all.find(name) ? self.name == name  : self.create(name) 
    end
    def print_songs
        songs.each {|song| puts song.name}

    end


   
    # binding.pry
end