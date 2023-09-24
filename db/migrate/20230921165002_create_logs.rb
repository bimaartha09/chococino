class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.string :action
      t.integer :actor_id
      t.string :description
      t.string :model_name
      t.integer :model_id

      t.timestamps

      t.index :actor_id
      t.index :action
    end
  end
end
