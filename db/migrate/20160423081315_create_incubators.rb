class CreateIncubators < ActiveRecord::Migration
  def change
    create_table :incubators do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
