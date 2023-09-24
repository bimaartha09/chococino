class NotifierMailer < ApplicationMailer
  def reminder_task
    mail(
      to: params[:email],
      subject: "Notification Reminder Task"
    )
  end
end
