require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    Dir["./spec/fixtures/**/*.mp3"].map { |f| File.basename(f)} #array with the path
  end

binding.pry

  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end

end
