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

#returns hash in which the keys are the names of each genre and value is the number of songs in each genre
#need to iterate over @@genres and populate a hash with key/value pairs
  #need to check if hash already contains a key of a particular genre
      #if so increment the value of that key by one
      #otherwise create a new key/value pair

  def self.genre_count

  end



    # def self.genre_count
    #   genre_hash = {}
    #   @@genres.count do |genre|
    #     if genre_hash[genre]
    #       genre_hash[genre] << count += 1
    #     else
    #       genre_hash[genre]
    #     end
    #   end
    # end




end
