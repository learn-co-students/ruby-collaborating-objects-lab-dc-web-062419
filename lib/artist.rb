require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(new_song_i)
        new_song_i.artist = self
        
        # binding.pry
        unless Song.all.include?(new_song_i) 
            Song.all << new_song_i
        end
    end

    def self.all
        @@all   
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        # binding.pry
        does_have =  @@all.select {|artist| artist.name ==name } 
        # binding.pry
        # @@all.select {|artist| artist.name !=name } 
        if does_have == []
            # binding.pry 
            new_artist = Artist.new(name)
            @@all << new_artist
            new_artist
        end
    end

    def print_songs
        # binding.pry #why doesn't pry work here?
        their_songs = Song.all.select{|song| song.artist == self}
         # self.songs
         their_songs.each {|song| puts song.name}
        #  binding.pry
    end

    # binding.pry
end