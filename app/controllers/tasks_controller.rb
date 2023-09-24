class TasksController < ApplicationController
  def index
    tasks = TaskService.retrieve(params)

    retrieve_response(construct_serializer(tasks), nil)
  end

  def create
    task, err = TaskService.submit(task_params)

    retrieve_response(construct_serializer(task), err)
  end

  def show
    task, err = TaskService.retrieve_by_id(params[:id])

    retrieve_response(construct_serializer(task), err)
  end

  def update
    task, err = TaskService.update(params)

    retrieve_response(construct_serializer(task), err)
  end

  def destroy
    message, err = TaskService.delete(params[:id])

    render json: message, status: 200
  end

  private

  def construct_serializer(object)
    TaskSerializer.new(object).as_json
  end

  def task_params
    params.permit(:user_id, :title, :deadline_time, :description)
  end
end
