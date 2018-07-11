module Web::Controllers::Tasks
  class Edit
    include Web::Action

    expose :task

    def call(params)
      @task = TaskRepository.new.find(params[:id])
    end
  end
end
