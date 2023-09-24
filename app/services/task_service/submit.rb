module TaskService
  class Submit
    def initialize(params, options={})
      @params = params
      @options = options
    end

    def call
      task = Task.new(
        title: @params[:title],
        description: @params[:description],
        user_id: @params[:user_id],
        deadline_time: @params[:deadline_time].to_datetime,
        state: 'in_progress'
      )

      task.validate!

      return nil, Chococino::SubmitDataError unless task.save!

      task
    end
  end
end
