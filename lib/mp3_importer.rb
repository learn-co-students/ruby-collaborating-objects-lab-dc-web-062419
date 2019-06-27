class MP3Importer
  def initialize(path)
    @path = path
    @files = << path
  end

  attr_accessor :path, :files
end