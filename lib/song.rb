class Song

  attr_accessor :name, :genre, :artist

  @@count =0
  @@artists =[]
  @@genres =[]

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
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
    new_hash = {}
    @@genres.map do |genre|
      if new_hash[genre]
        new_hash[genre] +=1
      else
        new_hash[genre] =1
      end
    end
  new_hash
  end

  def self.artist_count
    new_hash = {}
    @@artists.map do |artist|
      if new_hash[artist]
        new_hash[artist] +=1
      else
        new_hash[artist] = 1
      end
    end
    new_hash
   end

end
