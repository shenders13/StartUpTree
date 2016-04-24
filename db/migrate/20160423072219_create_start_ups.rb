class CreateStartUps < ActiveRecord::Migration
  def change
    create_table :start_ups do |t|
      t.string :name
      t.text :short_description
      t.text :long_description
      t.string :image
      t.string :video
      t.integer :stage_id
      t.integer :incubator_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
