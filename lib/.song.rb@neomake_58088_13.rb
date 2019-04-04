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
    end
  end

end

free_bird = Song.new("Free Bird", "LS", "rock")
sweet_child = Song.new("Sweet Child O' Mine", "GnR", "rock")
song2 = Song.new("Song 2", "Blur", "rock")

binding.pry
"bye"
