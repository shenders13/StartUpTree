class AddStartUpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :start_up, :boolean
  end
end
