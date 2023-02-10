class AddUserIdToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :novels, :user_id, :integer
  end
end
