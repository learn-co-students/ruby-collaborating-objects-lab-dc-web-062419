require "pry"

class MP3Importer
    attr_reader :path
    def initialize(path)
        @path = path
        @files= []
    end
    
    def files 
        @files =  Dir.glob("*.mp3", base: self.path)
        # binding.pry
    end

    def import
       files.each {|song| Song.new_by_filename}
    end
end

