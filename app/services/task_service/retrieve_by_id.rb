module TaskService
  class RetrieveById
    def initialize(id, options={})
      @id = id.to_i
      @options = options
    end

    def call
      task = Task.find(@id)

      return nil, Chococino::SubmitDataError if task.nil?

      task
    end
  end
end
