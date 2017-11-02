class Song

  attr_accessor :name, :artist

  def initialize(name, artist = "")
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    # binding.pry
    no_ext = file_name.split(".")[0]
    name = no_ext.split(" - ")[1]
    artist_name = no_ext.split(" - ")[0]
    # binding.pry
    self.new(name, Artist.new(artist_name))
  end

end
