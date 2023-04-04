class CreateCaptainInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :captain_inventories do |t|
      t.integer :captains_id
      t.integer :brickset_id

      t.timestamps
    end
  end
end
