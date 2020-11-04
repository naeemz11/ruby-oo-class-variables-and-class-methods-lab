require 'pry'
class Song 

    attr_accessor :name, :artist, :genre 

    @@artists= []
    @@genres= []
    @@count = 0 

    def initialize(song_name, artist, genre)
        @name = song_name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist 
        @@genres << @genre

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
        genre_count = {}
        @@genres.each do |genr|
          if genre_count[genr]
            genre_count[genr] += 1 #add +1 if new genre
          else 
            genre_count[genr] = 1  #leave it if it's the same genre
          end 
        end 
        genre_count
    end 

    def self.artist_count
      artist_count = {}
      @@artists.each do |artis|
        if artist_count[artis]
          artist_count[artis] += 1
        else 
          artist_count[artis] = 1
        end 
      end 
      artist_count
    end 
    binding.pry

    



end 