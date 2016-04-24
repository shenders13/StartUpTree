class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :stage_name
      t.string :stage_description
      t.string :stage_icon

      t.timestamps null: false
    end
  end
end
