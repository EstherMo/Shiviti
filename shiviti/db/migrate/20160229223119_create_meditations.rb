class CreateMeditations < ActiveRecord::Migration
  def change
    create_table :meditations do |t|
      t.integer :user_id
      t.text :note
      t.time :start_time
      t.time :end_time
      t.string :before_mood
      t.string :after_mood

      t.timestamps null: false
    end
  end
end
