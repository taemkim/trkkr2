class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :email, :password_digest
      t.integer :user_rank, :user_score
      t.timestamps
    end
  end
end
