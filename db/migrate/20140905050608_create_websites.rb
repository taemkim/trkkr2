class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :sitename, :url
      t.integer :current_ranking
      t.timestamps
    end
  end
end
