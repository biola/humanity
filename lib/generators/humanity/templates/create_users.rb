class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :email
      t.string :department
      t.string :photo_url
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.integer :login_count
      t.timestamps
    end

    add_index :users, :username
    add_index :users, :email
    add_index :users, :last_name
    add_index :users, :first_name
    add_index :users, [:last_name, :first_name]
    add_index :users, [:first_name, :last_name]
  end
end
