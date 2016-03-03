class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :phone_number
      t.datetime :time
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
