require 'diary'
require 'todo'
require 'todo_list'

describe 'integration' do
  context 'return list of todos and the diary' do
      it 'adding tasks with diary' do 
        diary = Diary.new
        diary.add_entry("experience")
        todo1 = Todo.new("clean room")
        todo2 = Todo.new("do the dinner")
        list = TodoList.new
        list.add_list(todo1)
        list.add_list(todo2)
        result = diary.add_todo_list_to_diary(list)
        expect(result).to eq ["experience", [todo1, todo2]]
      end

      it 'list of todos is empty' do
        diary = Diary.new
        diary.add_entry("experience")
        todo = Todo.new("")
        list = TodoList.new
        list.add_list(todo)
        result = diary.add_todo_list_to_diary(list)
        expect(result).to eq ["experience", [todo]]
      end
   end
  end
  #  context 'return entries with contacts' do
  #     it 'adding contact with entries' do
  #       experience1 = Diary.new
  #       experience1.add_entry("sing with friends")
  #       contact1 = TodoAndContact.new
  #       contact2 = TodoAndContact.new
  #       contact1.add_contact(07473123123)
  #       contact2.add_contact(07473123122)
  #       expect(experience1.view_diary_with_contacts).to eq ["sing with friends", [07473123123,07473123122]]
  #     end
  #   end
