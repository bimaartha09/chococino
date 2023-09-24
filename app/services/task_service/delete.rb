module TaskService
  class Delete
    def initialize(id, options={})
      @id = id
      @options = options
    end

    def call
      task = TaskService.retrieve_by_id(@id)

      Task.destroy(task.id)

      { "message": "Success delete." }
    end
  end
end
