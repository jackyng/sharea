class CreateExpenseSplits < ActiveRecord::Migration
  def change
    create_table :expense_splits do |t|
      t.integer :user_id
      t.integer :expense_id
      t.integer :amount_owe
      t.integer :amount_pay
      t.boolean :completed

      t.timestamps
    end
  end
end
