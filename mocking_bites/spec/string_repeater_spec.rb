require 'string_repeater'

describe StringRepeater do
  it 'return the quantity asked to repeat the string' do 
    repeater = double :repeater
    expect(repeater).to receive(:puts).with("Hello. I will repeat a string many times.")
    expect(repeater).to receive(:puts).with("Please enter a string")
    expect(repeater).to receive(:gets).and_return("TWIX")
    expect(repeater).to receive(:puts).with("Please enter a number of repeats")
    expect(repeater).to receive(:gets).and_return("10")
    expect(repeater).to receive(:puts).with("Here is your result:")
    expect(repeater).to receive(:print).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")
    string_repeater = StringRepeater.new(repeater)
    string_repeater.run
  end
end


