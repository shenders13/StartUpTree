class AddUserIdToStartUps < ActiveRecord::Migration
  def change
    add_column :start_ups, :user_id, :integer
  end
end
