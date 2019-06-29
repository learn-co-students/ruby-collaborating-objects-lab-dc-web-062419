

class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end

    def self.new_by_filename(new_song)
        # binding.pry
        song_info = new_song.gsub(/.mp3/, "").split(" - ")
        # binding.pry
          song = self.new(song_info[1])

          song.artist = song_info[0]
            # binding.pry
          Artist.all << song
        #   binding.pry
        #   song.artist_name = song_info[0]
          
        #   Artist.find_or_create_by_name(song_info[0])
        # Artist.add_song(song)
        #   binding.pry
        
            # binding.pry
            
    end

    #  def artist_name=(name)
    #    self.artist = Artist.find_or_create_by_name(name)
    #    Artist.add_song(self)
    #  end


end