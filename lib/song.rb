class Song

    attr_accessor :name, :artist, :genre
 
    @@count = 0
    @@names = []
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre


        @@names << @name
        @@artists << @artist
        @@genres << @genre

        @@count += 1

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
        @@genres.map do |g| 
            if hash[g]
              hash[g] += 1
            else 
                hash[g] = 1
            end
        end
        hash
    end
    
    def self.artist_count
        hash = {}
        @@artists.map do |a| 
            if hash[a]
                 hash[a] += 1
            else 
                hash[a] = 1
            end
        end
        hash
    end
       

end
