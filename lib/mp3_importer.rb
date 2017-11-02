class MP3Importer

  attr_accessor :path, :output

  def initialize(file_path)
    @path = file_path
    @files = []
    @files << @path
  end

  def files
    output = Dir.entries(@path).each do |file_name|
      file_name
    end
    output.slice(2..output.length)
  end

  def import
    # binding.pry
    self.files.each do |file_name|
      no_ext = file_name.split(".")[0]
      name = no_ext.split(" - ")[1]
      artist_name = no_ext.split(" - ")[0]
      if Artist.all_names.include?(artist_name) == false
        Artist.new(artist_name).add_song(Song.new(name))
      else
        Artist.all.find do |artist|
          artist.name == artist_name
        end.add_song(Song.new(name))
      end
    end
  end

end
