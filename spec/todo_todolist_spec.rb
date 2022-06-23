require 'todo'
require 'todo_list'

describe Todo do
  context 'return the todolist when some task is added' do
    it 'return the list with one task' do 
      todo1 = Todo.new("Buy groceries")
      todo2 = Todo.new("Clean the dishes")
      todo_list = TodoList.new
      todo_list.add_list(todo1)
      todo_list.add_list(todo2)
      expect(todo_list.view_list).to eq [todo1, todo2]
    end
  end
end

# describe Diary do 
#   context 'return the best entry' do
#     it 'adding wpm and time to read, return the experience to read' do 
#       experience1 = Diary.new
#       experience1.add_entry("Today I had fun")
#       experience1.add_entry("Yesterday I had fun and cooked with my friends")
#       experience1.add_entry("Today I cleaned my garden")
#       result = experience1.find_best_entry_for_reading_time(2,2)
#       expect(result).to eq "Today I had fun"
#     end
#   end
# end

# describe Diary do 
#   context 'return the list of experiences' do
#     it 'adding experiences and read all of them' do
#       experience = Diary.new
#       experience.add_entry("Today I had fun")
#       experience.add_entry("Yesterday I had fun and cooked with my friends")
#       experience.add_entry("Today I cleaned my garden")
#       result = experience.view_experiences
#       expect(result).to eq ["Today I had fun", "Yesterday I had fun and cooked with my friends", "Today I cleaned my garden"]
#     end
#   end
# end