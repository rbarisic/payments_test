class AddSessionIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :session, index: true
  end
end
