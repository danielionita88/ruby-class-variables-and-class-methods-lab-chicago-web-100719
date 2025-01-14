class Song

attr_reader :name, :artist, :genre
@@count= 0
@@artists = []
@@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        
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
        @@genres.inject(Hash.new(0)) {|genres,e| genres[e] += 1; genres}
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)){|artist,e| artist[e]+=1; artist}
    end
end