class AddUsersRefToFashionposts < ActiveRecord::Migration
  def change
    add_column :fashionposts, :user_id, :integer
  end
end
