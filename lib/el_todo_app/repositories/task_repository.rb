class TaskRepository < Hanami::Repository
  def recent
    tasks.order { created_at.desc }
  end
end
