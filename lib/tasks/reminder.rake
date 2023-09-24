namespace :reminder do
  desc "Run all user that has 3 days before deadline until that day."
  task deadline_todo: :environment do
    due_tasks = Task.where(deadline_time: Time.now..Time.now + 3.days)

    for task in due_tasks do
      NotifierMailer.with(email: task.user.email).reminder_task
    end

  end
end
