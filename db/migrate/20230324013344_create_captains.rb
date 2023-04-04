class CreateCaptains < ActiveRecord::Migration[7.0]
  def change
    create_table :captains do |t|
      t.string :captain_name
      t.integer :captain_num
      t.integer :movie_num
      t.string :film_group

      t.timestamps
    end
  end
end
