class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :state, limit: 1
      t.string :email

      t.timestamps

      t.index :email
    end
  end
end
