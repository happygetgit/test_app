class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.integer :phone
      t.string :password
      t.string :confirm_password
      t.timestamps
    end
  end
end
