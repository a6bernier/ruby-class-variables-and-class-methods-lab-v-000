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
    @@genres
  end


#iterate through @@artists to remove duplicates
#return only unique artists
  def self.artists
    if @@artists.each do |name|
      name.uniq
    else
      @@artists
  end

end
