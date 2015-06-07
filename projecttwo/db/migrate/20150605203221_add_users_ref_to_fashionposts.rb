class AddUsersRefToFashionposts < ActiveRecord::Migration
  def change
    add_column :fashionposts, :user, :references 
  end
end
