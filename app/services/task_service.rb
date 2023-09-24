module TaskService
  module_function

  def delete(*args); TaskService::Delete.new(*args).call; end
  def retrieve_by_id(*args); TaskService::RetrieveById.new(*args).call; end
  def retrieve(*args); TaskService::Retrieve.new(*args).call; end
  def submit(*args); TaskService::Submit.new(*args).call; end
  def update(*args); TaskService::Update.new(*args).call; end

end
