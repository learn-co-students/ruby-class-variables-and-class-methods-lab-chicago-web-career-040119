require "pry"

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    #instance methods
    @name = name
    @artist = artist
    @genre = genre

    #class methods
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  #class methods ////////////////////
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
    my_hash = {}
    @@genres.each {|genre|
      unless my_hash.has_key?(genre)
        my_hash[genre] = 0
      end
      my_hash[genre] += 1
    }
    my_hash
  end

  def self.artist_count
    my_hash = {}
    @@artists.each {|artist|
      unless my_hash.has_key?(artist)
        my_hash[artist] = 0
      end
      my_hash[artist] += 1
    }
    my_hash
  end
  #instance methods ////////////////////

end

#binding.pry
"sup"
