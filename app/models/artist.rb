class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  # def get_first_song
  #   self.songs.first
  # end
  ### Explanation for above method: Recall that using has_many :songs creates an instance method #songs that we can call on any instance of an artist.
  ### Calling this method now will return an array of the artist's songs. Since our method is specifically looking for the first song, we just have to chain on a #first

  def get_genre_of_first_song
    self.songs.first.genre
    #return the genre of the artist's first saved song
  end

  def song_count
    self.songs.count
    #return the number of songs associated with the artist
  end

  def genre_count
    self.genres.count
    #return the number of genres associated with the artist
  end
end
