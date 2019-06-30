class Song

	attr_accessor :name, :artist

	def initialize (name)
		@name = name
	end

	def self.new_by_filename(filename)
		#find the song name and artist name
		artist = filename.split(" - ")[0]
		song = filename.split(" - ")[1]
		#create a new song instance using the string we gathered from the filename
		new_song = self.new(song)
		#associate that new song with an artist
		new_song.artist_name = artist
		#return the new song instance
		new_song
		# binding.pry
	end

	def artist_name=(name)
		self.artist = Artist.find_or_create_by_name(name)
		artist.add_song(self)
	end


end