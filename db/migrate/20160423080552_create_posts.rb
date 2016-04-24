class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :start_up_id
      t.text :content

      t.timestamps null: false
    end
  end
end
