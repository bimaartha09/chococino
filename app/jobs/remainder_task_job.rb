class RemainderTaskJob < ApplicationJob
  queue_as :default

  def perform(date)

  end
end
