require 'cat_facts'

describe CatFacts do
  it 'return the fact when requested' do
    fake_request = double(:fake_request)
    expect(fake_request).to receive(:get).with(
        URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"A cat can\u2019t climb head first down a tree because every claw on a cat\u2019s paw points the same way. To get down from a tree, a cat must back down.","length":142}')

    fact = CatFacts.new(fake_request)
    result = fact.provide
    expect(result).to eq "Cat fact: A cat can\u2019t climb head first down a tree because every claw on a cat\u2019s paw points the same way. To get down from a tree, a cat must back down."
  end
end