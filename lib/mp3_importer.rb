class MP3Importer

    attr_reader :path

    @@files = []

    def initialize(path)
        # binding.pry
        @path = path
        # @@files << self
    end

    def files
        Dir.entries(path).select {|file| file.end_with?("p3")}
    end

    def import
        files.each {|filename| Song.new_by_filename(filename) }
    end


end