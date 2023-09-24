class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :state, limit: 1
      t.datetime :deadline_time

      t.timestamps

      t.index :user_id
      t.index [:user_id, :state]
    end
  end
end
