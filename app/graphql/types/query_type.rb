module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :reminders, [Types::ReminderType], null: false

    def reminders
      Reminder.all
    end

    field :reminder, Types::ReminderType, null: false do
      argument :id, ID, required: true
    end

    def reminder(id:)
      Reminder.find(id)
    end
  end
end
