class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :email
      t.string :mobile
      t.integer :photo_id
      t.boolean :email_pref
      t.boolean :mobile_pref
      t.boolean :remember

      t.timestamps
    end
  end
end
