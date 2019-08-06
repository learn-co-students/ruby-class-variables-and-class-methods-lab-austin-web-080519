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
    histohash = {}
    @@genres.each do |genre|
      histohash.key?(genre) ? histohash[genre] += 1 : histohash[genre] = 1
    end
    histohash
  end

  def self.artist_count
    histohash = {}
    @@artists.each do |artist|
      histohash.key?(artist) ? histohash[artist] += 1 : histohash[artist] = 1
    end
    histohash
  end
end