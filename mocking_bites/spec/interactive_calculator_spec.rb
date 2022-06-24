require 'interactive_calculator'

describe InteractiveCalculator do 
  it 'reveive two numbers and returns its difference' do 
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("4")
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("3")
    expect(terminal).to receive(:puts).with("Here is your result:")
    expect(terminal).to receive(:puts).with("4 - 3 = 1")
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end
end