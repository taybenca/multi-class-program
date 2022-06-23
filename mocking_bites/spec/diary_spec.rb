require 'diary'

describe 'read the contents' do
  it 'return the contents of the diary' do
    fake_content = double(:fake_content, contents: "FAKE")
    diary = Diary.new(fake_content)
    expect(diary.read).to eq fake_content
  end
end