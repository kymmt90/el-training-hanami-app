module Web::Controllers::Tasks
  class Update
    include Web::Action

    expose :task

    params do
      required(:task).schema do
        required(:name).filled
        required(:description).filled
      end
    end

    def call(params)
      @task = repository.find(params[:id])

      if params.valid?
        repository.update(params[:id], params[:task])

        redirect_to routes.tasks_path
      else
        self.status = 422
      end
    end

    private

    def repository
      @repository ||= TaskRepository.new
    end
  end
end
