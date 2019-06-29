

class Artist


    attr_accessor :name, :songs, :add_song

    @@all = []

    def initialize(name)
        @name = name
        @all = []
        @@all << self
    end
    
    def add_song(song)
            @all << song
    end

    def songs
        @all  
        # binding.pry
    end

    def self.all
        # binding.pry
        @@all
    end

    def save 
        @@all << self
    end

    def self.find_or_create_by_name(names)
        a = []
        
        if self.all.select do |artist|
            artist.name == names
            a = artist
            end
            a
        else
            Artist.new(names)
        end
    end

    def self.add_song(song)
        @@all << song
    end

    def print_songs
         
        songs.each do |song|
          puts  song.name
          end
          
        
    end

end