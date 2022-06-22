require 'track'
require 'music_library'

describe 'integration' do
  context 'when some track is added' do
    it 'return the list of one track object' do
      track = Track.new('Love', 'Someone')
      library = MusicLibrary.new
      library.add(track)
      result = library.all
      expect(result).to eq [track]
    end

    it 'return the list when added more track objects' do
      library = MusicLibrary.new
      track1 = Track.new('Love', 'Someone')
      track2 = Track.new('Hate', 'Nobody')
      track3 = Track.new('Happyness', 'Myself')
      library.add(track1)
      library.add(track2)
      library.add(track3)
      result = library.all
      expect(result).to eq [track1, track2, track3]
    end
  end
  context 'find the track' do
    it 'return a track when the user give a keyword' do
      library = MusicLibrary.new
      track1 = Track.new('Love', 'Someone')
      track2 = Track.new('Hate', 'Nobody')
      track3 = Track.new('Happyness', 'Myself')
      library.add(track1)
      library.add(track2)
      library.add(track3)
      result = library.search("Myself")
      expect(result).to eq [track3]
    end
  end
end

describe 'unit test for Track' do
  it'returns true if the keyword matches the title or artist' do
    track = Track.new('Love', 'Someone')
    expect(track.matches?("Love")).to eq true
  end
end

describe 'unit test for MusicLibrary' do
  context 'mock tests' do
    it 'returns the list of tracks added in a music library' do
      library = MusicLibrary.new
      track1 = double :fake_track
      library.add(track1)
      expect(library.all).to eq [track1]
    end
  end
end