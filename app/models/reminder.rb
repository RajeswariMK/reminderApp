class Reminder < ApplicationRecord
  validates :name, presence: true
  validates :reminder_type, presence: true
  validates :date, presence: true

  enum reminder_type: [:birthday, :work_anniversary]
  # after_create :set_reminder

  # Notify our appointment attendee X minutes before the appointment time
  def set_reminder
   
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    body = "Hi. Just a reminder that you have an birthday reminder for #{self.name} at #{time_str}."
    
  end

  def when_to_run
    minutes_before_appointment = 30.minutes
    time - minutes_before_appointment
  end

  # handle_asynchronously :set_reminder, :run_at => Proc.new { |i| i.when_to_run }
end
