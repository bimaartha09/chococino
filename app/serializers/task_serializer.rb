class TaskSerializer
  def initialize(object, options={})
    @object = object
    @options = options
  end

  def as_json
    puts @object.class

    return as_array_json unless @object.is_a?(Task)

    {
      task: @object
    }
  end

  private

  def as_array_json
    arr = []

    for obj in @object
      arr << obj
    end

    {
      tasks: arr
    }
  end
end
