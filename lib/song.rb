class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists =[]
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  def self.count
    @@count
  end

#end
 def self.artists
   @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  #genre_hash = {}
#i = 1
  #self.genres.each do |genre|
    #if !genre_hash.include?(genre)
      #genre_hash[genre] =[]
      #genre_hash[genre] = i
    #else
      #genre_hash[genre] = (i + 1)
    #end
  #end
  #genre_hash
  genre_hash = {}
  i = 1
  @@genres.each do |genre|
   if !genre_hash.include?(genre)
     genre_hash[genre] = []
     genre_hash[genre] = i
   else
     genre_hash[genre] = i + 1
end
end
genre_hash
end
def self.artist_count
artist_hash = {}
i = 1
@@artists.each do |artist|
if !artist_hash.include?(artist)
  artist_hash[artist] = []
  artist_hash[artist] = i
else
  artist_hash[artist] = i + 1
end
end
artist_hash
end
end
