require 'pry'

class MP3Importer
  attr_reader :path, :files
  def initialize(path)
    @path = path
    @files = []
    parse_filenames(Dir[path + "/*.mp3"]).each { |path| @files << path }
  end

  def import
    files = Dir[path + "/*.mp3"]
    parsed = parse_filenames(files)
    parsed.each do |file|
      Song.new_by_filename(file)
    end
  end

  def parse_filenames(files)
    parsed = files.map do |file|
      file[21.. file.length]
    end
    return parsed
  end
end