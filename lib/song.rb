require "Pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1

    @@genres << @genre
    @@artists << @artist

    # @@genres << @genre if !@@genres.include?(genre)
    # @@artists << @artist if !@@artists.include?(artist)
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.group_by do |genre|
      genre
    end.transform_values do |genre|
      genre.count
    end
  end

  def self.artist_count
    @@artists.group_by do |artist|
      artist
    end.transform_values do |artist|
      artist.count
    end
  end

end

# free_bird = Song.new("Free Bird", "LS", "rock")
# sweet_child = Song.new("Sweet Child O' Mine", "GnR", "rock")
# you_could = Song.new("You could be mine", "GnR", "rock")
# november_rain = Song.new("November Rain", "GnR", "rock")
# bohemian = Song.new("Bohemiam Rhapsody", "Queen", "rock")
# song2 = Song.new("Song 2", "Blur", "rock")
# el_gran_combo = Song.new("El Gran Combo", "El Gran Combo", "salsa")
# apesht = Song.new("Apesh!t", "The Carters", "hiphop")
#
#
# binding.pry
# "bye"
