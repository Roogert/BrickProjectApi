class CreateBricksets < ActiveRecord::Migration[7.0]
  def change
    create_table :bricksets do |t|
      t.string :brickset_name
      t.integer :brickset_num
      t.integer :piece_count
      t.integer :movie_id

      t.timestamps
    end
  end
end
