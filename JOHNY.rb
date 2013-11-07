# Problem Name: Uncle Johny

# Problem Statement: Vlad enjoys listening to music. He lives in Sam's Town. A few days ago he had a birthday, so his parents gave him a gift: MP3-player! Vlad was the happiest man in the world! Now he can listen his favorite songs whenever he wants!
# Vlad built up his own playlist. The playlist consists of N songs, each has a unique positive integer length. Vlad likes all the songs from his playlist, but there is a song, which he likes more than the others. It's named "Uncle Johny".
# After creation of the playlist, Vlad decided to sort the songs in increasing order of their lengths. For example, if the lengths of the songs in playlist was {1, 3, 5, 2, 4} after sorting it becomes {1, 2, 3, 4, 5}. Before the sorting, "Uncle Johny" was on K-th position (1-indexing is assumed for the playlist) in the playlist.
# Vlad needs your help! He gives you all the information of his playlist. Your task is to find the position of "Uncle Johny" in the sorted playlist.

# Problem Link: http://www.codechef.com/NOV13/problems/JOHNY

class Johny

  no_of_times = Integer(gets.chomp)

  def self.get_the_final_position(songs_length, k)
    before_position = songs_length[ k - 1 ]
    songs_length = songs_length.sort
    after_position = songs_length.index(before_position)
    after_position + 1
    p after_position + 1
  end

  no_of_times.times do
    no_of_songs = Integer(gets.chomp)
    songs_length = []
    no_of_songs.times { songs_length << Integer(gets.chomp) }
    k = Integer(gets.chomp)
    Johny.get_the_final_position(songs_length,k)
  end

end


