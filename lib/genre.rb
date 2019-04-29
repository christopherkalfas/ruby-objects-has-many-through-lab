class Genre
    attr_accessor :name
    
    @@all = []

        def initialize(name)
            @name = name
            @@all << self
        end 

        def self.all
            @@all
        end 

        def songs 
            song_list = []
            Song.all.select do |song|
                if self == song.genre
                    song_list << song
                end 

            end 
            song_list
        end 

        # def artists
        #     artist_list = []
        #     Song.all.each do |song|
        #         if self == song.genre
        #             artist_list << song.artist
        #         end 
        #     end 
        #     artist_list
        # end 

        def artists 
            Song.all.select {|song| song.genre == self}.map {|son| son.artist}
        end

        
      
end 