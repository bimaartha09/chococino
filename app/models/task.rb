class Task < ApplicationRecord

  belongs_to :user, class_name: 'User', foreign_key: :user_id

  validate :deadline_time_validate

  enum state: {
    in_progress: 0,
    done: 1,
    inactive: 2
  }

  private

  def deadline_time_validate
    errors.add(:base, 'waktu deadline tidak boleh sebelum waktu sekarang.') if self.deadline_time < Time.now
  end

end
