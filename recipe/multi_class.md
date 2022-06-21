{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────┐
│ Diary                      │
│                            │
│ - add(entry)               │
│ - view_todo_list_with_diary             │
│ - find_the_best_entry_to_read(wpm, minutes)
│   => []    - view_contact_list_with_entry    => every entry they want to see a list of contacts           │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ TodoAndContact          │
│                         │
│ - todo_list_add (task)  todo_list => array│
│ - add_contact(number)  => list_of_contact - array
│       │
│   =>  │
└─────────────────────────┘
Also design the interface of each class in more detail.

class Diary
  def initialize
    # ...
  end

  def add(experience) 
    # Add the experience in the Diary
    # Returns nothing
  end

  def view_todo_list_with diary
    # Returns a list of todo list and the diary
  end
  
  def find_the_best_entry_to_read(wpm, minutes) => integers
    # Returns a entry based on the time the user have and words they can read
  end
end

class TodoAndContact
  def initialize
  end

  def add_todo(task) => string
    add the task in the todolist
  end

  def view_todo_list
    return the todolist
  end
  
  def add_contact(number) => integer
    add the contact in the contact_list
  end

end
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# Gets the diary with tasks
diary = Diary.new
diary = diary.add("experience")
todo1 = TodoAndContact.new
todo2 - TodoAndContact.new
todo1.add("clean room")
todo2.add("do the dinner")
=> [experience, todo1, todo2]


4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# track the todo_list
task = TodoAndContact.new
task.add("clean room")
task.view_tod_list => "clean room"



