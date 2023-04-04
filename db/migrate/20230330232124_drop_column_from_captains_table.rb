class DropColumnFromCaptainsTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :captains, :captain_num, :movie_num
  end
end
