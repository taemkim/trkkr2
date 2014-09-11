class AddPickUrlToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :pick_url, :string
  end
end
