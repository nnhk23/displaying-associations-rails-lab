class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        count = 0
        Artist.all.each do |artist|
            Song.all.each do |song|
                song.artist_id == artist.id ? count += 1 : count += 0
            end
        return count
        end
    end

end
