module Web::Controllers::Tasks
  class Index
    include Web::Action

    expose :tasks

    def call(params)
      @tasks = TaskRepository.new.recent.to_a
    end
  end
end
