class Song

attr_accessor :name, :artist, :genre

@@artists = []
@@genres = []
@@count = 0
#@@artist_count = {}


def initialize(name, artist, genre)
  # instance variable
  @name = name
  @artist = artist
  @genre = genre

  #class variable

  @@artists << artist
  @@genres << genre
  @@count = @@count += 1
  #@@artist_count[artist] = name

end

# instance methods

#class methods

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
  genre_count = {}
  @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else genre_count[genre] = 1
    end
  end
    genre_count
end

def self.artist_count
  artist_count = {}
  @@artists.each do |name|
    if artist_count[name]
      artist_count[name] += 1
    else artist_count[name] = 1
    end
  end
    artist_count
end


end
