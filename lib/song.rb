

class Song

    attr_accessor :name, :artist

   

    def initialize(name)
        @name = name
        # binding.pry
    end

    def self.new_by_filename(new_file)
        # binding.pry
        # song_info = new_song.gsub(/.mp3/, "").split(" - ")
         writer, song_name = new_file.split(" - ")
          new_song = self.new(song_name)
        #   binding.pry
        #   new_song.artist = writer
            # binding.pry
        #   Artist.find_or_create_by_name(song.name)
        #   binding.pry
        #   new_song.artist_name = writer
        # binding.pry
        # Artist.add_song(song)
        new_song
        #Artist:0x00007fe9b8a52068
            # binding.pry
            
    end

     def artist_name=(name)
        binding.pry
       Artist.find_or_create_by_name(name)
    #    binding.pry
     end


end