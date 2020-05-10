class MP3Importer

    attr_accessor :path

    

    def initialize(path)
        @path = path
       
       
    end


    def files
        Dir[ "#{path}/*.mp3" ].map{ |f| File.basename f }
        # binding.pry
    end

    def import
        # binding.pry 
           files.each do |file_path| 
        #    Song.new_by_filename(path.gsub(/.mp3/, "").split(" - ")[1])
                Song.new_by_filename(file_path) 
        #    Song.new_by_filename(file_path.gsub(/.mp3/, ""))  
        end 
       
    end

end