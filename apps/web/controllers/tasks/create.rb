module Web::Controllers::Tasks
  class Create
    include Web::Action

    params do
      required(:task).schema do
        required(:name).filled
        required(:description).filled
      end
    end

    def call(params)
      if params.valid?
        TaskRepository.new.create(params[:task])
        redirect_to routes.tasks_path
      else
        self.status = 422
      end
    end
  end
end
