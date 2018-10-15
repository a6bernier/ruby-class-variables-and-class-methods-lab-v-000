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
    @@genres << genre
    @@artists << artist
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


  #each genre name key should point to a value that is the number of songs that have that genre

  #need to check if hash already contains a key of a particular genre
      #if so increment the value of that key by one
      #otherwise create a new key/value pair

  def self.genre_count
    genre_hash = {}
    genre_count = 0
    @@genres.each do |genre| #need to iterate over @@genres and populate a hash with key/value pairs
      if genre == genre
        genre_count += 1
        genre_hash["genre"] << genre_count
      else
        genre_count = 1
      end
    end
    genre_hash #returns hash in which the keys are the names of each genre
  end

end
