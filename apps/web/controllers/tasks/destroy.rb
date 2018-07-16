module Web::Controllers::Tasks
  class Destroy
    include Web::Action

    def call(params)
      TaskRepository.new.delete(params[:id])

      redirect_to routes.tasks_path
    end
  end
end
