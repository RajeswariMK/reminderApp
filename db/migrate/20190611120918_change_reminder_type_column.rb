class ChangeReminderTypeColumn < ActiveRecord::Migration[5.2]
  def change
  	change_column :reminders, :reminder_type, 'integer USING CAST(reminder_type AS integer)'
  end
end
