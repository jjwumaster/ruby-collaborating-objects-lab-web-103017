class Artist

  @@all = []
  @@all_names = []

  def self.all
    @@all
  end

  def self.all_names
    @@all_names
  end

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    @@all_names << name
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.new(name) if @@all_names.include?(name) == false
    # binding.pry
  end

  def print_songs
    @songs.each {|song| puts song.name} # title
  end

end
