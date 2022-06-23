class Diary
  attr_accessor :list
  def initialize
    @diary = []
    #@list_of_contacts = []
  end
    
  def add_entry(experience)
    @diary << experience
  end

  def view_experiences
    return @diary
  end

  def add_todo_list_to_diary(list)
    @diary << list.view_list
  end

  def add_contact(contact)
    @list_of_contacts << contact
  end

  def view_diary_with_contacts
    @diary << @list_of_contacts
  end

  def count_words
    result = []
    @diary.each do |experience|
      result << experience.split(" ").count
    end
    return result
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    possible_entries = []
    count = 0
    best_entry = nil
    @diary.each do |entry|
      if entry.split(" ").count <= minutes * wpm
        possible_entries << entry
      end
    end
    possible_entries.each do |entry|
      if entry.split(" ").count > count
        best_entry = entry
      end
    end
    return best_entry
  end
end