class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :description
      t.string :deadline
      t.integer :owner_id
      t.boolean :completed
      t.integer :event_id

      t.timestamps
    end
  end
end
