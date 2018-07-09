require_relative '../../spec_helper'

describe Task do
  it 'can be initialized with attributes' do
    task = Task.new(name: 'task', description: 'do the task')
    task.name.must_equal 'task'
    task.description.must_equal 'do the task'
  end
end
