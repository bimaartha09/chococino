module TaskService
  class Retrieve
    def initialize(params, options={})
      @params = params
      @options = options
    end

    def call
      tasks = Task.where(state: ['in_progress', 'done'])

      tasks
    end
  end
end
