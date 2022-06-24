class StringRepeater
  def initialize(repeater)
    @repeater = repeater
  end
  
  def run
    @repeater.puts "Hello. I will repeat a string many times."  
    @repeater.puts "Please enter a string"
    string = @repeater.gets.chomp
    @repeater.puts "Please enter a number of repeats"
    number = @repeater.gets.to_i
    
    @repeater.puts "Here is your result:"
    @repeater.print string *number

  end
end

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run