module TaskService
  class Update
    def initialize(params, options={})
      @params = params
      @options = options
    end

    def call
      task = TaskService.retrieve_by_id(@params[:id])

      return nil, Chococino::NotFoundError if task.nil?

      task_attributes = {
        title: @params[:title],
        description: @params[:description],
        state: @params[:state],
        deadline_time: @params[:deadline_time]
      }.compact

      task.attributes = task_attributes
      task.validate!
      task.save!

      task
    end
  end
end
