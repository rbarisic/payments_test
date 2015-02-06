class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :password

      t.timestamps
    end
    add_index :users, :nickname, unique: true
  end
end