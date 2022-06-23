class TaskFormatter
  def initialize(task) # task is an instance of Task
    @title = task
  end

  def format_for_complete
    return "- [x] #{@title}"
  end

  def format_for_incomplete
    return "- [ ] #{@title}"
  end
end