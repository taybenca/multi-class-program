require 'secret_diary'
require 'diary'

describe 'integration' do 
  context 'read the diary' do
    it 'when is locked' do
      fake_secret_diary = double(:fake_secret_diary, 
        diary: "This is a fake diary")
      diary = Diary.new(fake_secret_diary)
      secret_diary = SecretDiary.new(diary)
      secret_diary.lock
      expect { secret_diary.read }.to raise_error "Go away!"
    end

    it 'when is unlocked' do
      fake_secret_diary = double(:fake_secret_diary, 
        diary: "This is a fake diary")
      diary = Diary.new(fake_secret_diary)
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      result = secret_diary.read
      expect(result).to eq diary
    end
  end
end