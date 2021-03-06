#require'pry'

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def new_song(name, genre)  
        new_song = Song.new(name, self, genre)
        new_song
    end 
    
    def songs
        
        Song.all.select do |songs|
            self == songs.artist 
        end 
       
    end 

    def genres
        self.songs.collect {|song| song.genre}    
    end 


end