class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :pick_time_ranking
      t.timestamps
    end
  end
end
