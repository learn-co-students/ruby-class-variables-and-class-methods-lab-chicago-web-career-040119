require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.map do |genre|
      if hash[genre]  #if hash contains a key of a particular genre
        hash[genre] += 1 #increment key/value
      else hash[genre] = 1 #create a new key/value pair
      end
    end
    return hash
  end

  def self.artist_count
    hash = {}
    @@artists.map do |artist|
      #binding.pry
      if hash.has_key?(artist)  #if hash contains a key of a particular artist
         hash[artist] += 1 #increment key/value
      else hash[artist] = 1 #create a new key/value pair
      #  binding.pry
      end
    end
    hash
  end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
ninety_nine_problems2 = Song.new("98 Problems", "Jay-Z", "pop")

Song.artist_count

# binding.pry
"usingpry"
