require 'diary_and_todos'

describe 'integration' do
  context 'return list of todos and the diary' do
      it 'adding tasks with diary' do 
        diary = Diary.new
        diary.add_entry("experience")
        todo1 = TodoAndContact.new
        todo2 = TodoAndContact.new
        todo1.add_todo("clean room")
        todo2.add_todo("do the dinner")
        result = diary.add_todo_list_in_diary
        expect(result).to eq ["experience", ["clean room", "do the dinner"]]
      end

      it 'list of todos is empty' do
        diary = Diary.new
        diary.add_entry("experience")
        todo1 = TodoAndContact.new
        todo1.add_todo("")
        result = diary.add_todo_list_in_diary
        expect(result).to eq ["experience", [""]]
      end
   end

   context 'return entries with contacts' do
      it 'adding contact with entries' do
        experience1 = Diary.new
        experience1.add_entry("sing with friends")
        contact1 = TodoAndContact.new
        contact2 = TodoAndContact.new
        contact1.add_contact(07473123123)
        contact2.add_contact(07473123122)
        expect(experience1.view_diary_with_contacts).to eq ["sing with friends", [07473123123,07473123122]]
      end
    end
end