class TodoList
  attr_accessor :list
  def initialize
    @list = []
  end

  def add_list(todo)
    @list << todo
  end

  def view_list 
    return @list
  end
end
