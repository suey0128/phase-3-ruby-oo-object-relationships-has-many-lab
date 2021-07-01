require 'pry'
require_relative "./song.rb"

class Artist
    attr_accessor :name, :songs

    # @@all_artists = []

    def initialize name
        @name = name
        # @@all_artists << @name
    end

    def songs
        #filter all the songs in the Song Class which belong to this artist.
        Song.all.select{|song| song.artist === self}
    end

    def add_song song
       
        song.artist = self
    end

    def add_song_by_name song_name
         Song.new(song_name).artist = self
    end


    def self.song_count
        Song.all.length
    end


end

adele = Artist.new("Adele")
drake = Artist.new("Drake")

# binding.pry