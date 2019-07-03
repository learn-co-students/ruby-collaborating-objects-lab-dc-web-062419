class Song

    @@all = []

    attr_accessor :name, :artist, :all, :producer_credit

    def initialize(name)
        @name = name
        @@all << self
        @producer_credit = ""
    end

    def self.all
        @@all 
    end

    # def artist(artist_name)
    #     new_artist = Artist.new(artist_name)
    #     binding.pry
    # end

    def self.new_by_filename(filename)
    
        artist_name = filename.split(" - ")[0]
        name = filename.split(" - ")[1]
        new_artist = Artist.new(artist_name)
        # artist(artist_name)
        new_song = Song.new(name)
        new_song.producer_credit = "UrsMadeThis"
        new_song.artist = new_artist
        Artist.all << new_artist
        new_song
    end

end