class ChangeTypeColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :reminders, :type, :reminder_type
  end
end
