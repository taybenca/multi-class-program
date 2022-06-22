class Track
  def initialize(title, artist) 
   @track = "#{title} from #{artist}"
  end
  
  def matches?(keyword)
    @track.include? keyword
  end
end