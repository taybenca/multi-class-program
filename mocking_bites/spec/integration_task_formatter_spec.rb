require 'task'
require 'task_formatter'

describe 'return the task formater' do
  it 'the task is complete' do
    fake_task = double(:fake_task, title: "Clean the garden")
    task = Task.new(fake_task)
    formatter = TaskFormatter.new(task)
    task.mark_complete
    expect(formatter.format_for_complete).to eq "- [x] #{task}"
  end

  it 'the task is not complete' do
    fake_task = double(:fake_task, title: "Clean the garden")
    task = Task.new(fake_task)
    formatter = TaskFormatter.new(task)
    task.complete?
    expect(formatter.format_for_incomplete).to eq "- [ ] #{task}"
  end
end