require 'features_helper'

describe 'List tasks' do
  let(:repository) { TaskRepository.new }

  before do
    repository.clear

    repository.create(name: 'task', description: 'do the task')
    repository.create(name: 'work', description: 'commit the work')
  end

  it 'displays each task' do
    visit '/tasks'

    within '#tasks' do
      assert page.has_css?('.task', count: 2), 'Expected to find 2 tasks'
    end
  end
end
