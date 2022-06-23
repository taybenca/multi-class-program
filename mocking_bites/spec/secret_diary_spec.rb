require 'secret_diary'

describe 'unit test' do
  context 'checking if the diary is lock and unlock' do
    it 'checking if it is lock' do
      fake_secret_diary = double(:fake_secret_diary, diary: "New secret")
      diary = SecretDiary.new(fake_secret_diary)
      expect(diary.lock).to eq true
    end

    it 'checking if it is lock' do
      fake_secret_diary = double(:fake_secret_diary, diary: "New secret")
      diary = SecretDiary.new(fake_secret_diary)
      expect(diary.unlock).to eq false
    end
  end
end