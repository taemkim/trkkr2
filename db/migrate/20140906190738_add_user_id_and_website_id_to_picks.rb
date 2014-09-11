class AddUserIdAndWebsiteIdToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :user_id, :integer
    add_column :picks, :website_id, :integer
  end
end
