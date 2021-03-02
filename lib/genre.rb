class Genre
        
    attr_accessor :name, :artist, :songs, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end

    def self.all
        @@all
    end

    # def new_song(name, genre)
    #     Song.new(name)
    #     Genre.new(genre)
    #     artist.name = self
    # end

    def songs
        Song.all{|song| song.genre == self}
    end

    def artists
        songs.map(&:artist)   #not too sure here either
    end
end