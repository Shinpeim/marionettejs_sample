class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.integer :artist_id

      t.timestamps
    end
  end
end
