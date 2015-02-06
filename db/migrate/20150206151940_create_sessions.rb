class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :cookie

      t.timestamps
    end
  end
end
