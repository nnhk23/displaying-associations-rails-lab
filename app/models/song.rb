class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    Song.all.collect do |song|
      song.artist.name
    end.first
  end


end
