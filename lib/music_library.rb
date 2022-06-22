class MusicLibrary
  def initialize
    @list_of_tracks = []
  end
  
  def add(track)
    @list_of_tracks << track
  end
  
  def all
    return @list_of_tracks
  end
    
  def search(keyword)
    search_list = []
    @list_of_tracks.each do |track|
      if track.matches?(keyword)
        search_list << track
      end
    end
    return search_list
  end
end