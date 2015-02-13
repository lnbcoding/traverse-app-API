class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :event_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
