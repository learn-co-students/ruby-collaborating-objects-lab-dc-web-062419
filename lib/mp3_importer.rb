require 'pry'

class MP3Importer
  def initialize(path)
    @path = path
    @songs = load(path)
    @files = []
    @songs.each { |song| @files << song }
  end

  attr_accessor :path, :files

  def load(path)
    files = Dir[path + "/*.mp3"]
    return parse_filenames(files)
  end

  def parse_filenames(files)
    parsed = files.map do |file|
      file[21.. file.length]
    end
    return parsed
  end

  def import
    @songs.each do |song| 
      Song.new_by_filename(song)
    end
  end


end