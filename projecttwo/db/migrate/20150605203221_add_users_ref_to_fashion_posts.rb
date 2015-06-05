class AddUsersRefToFashionposts < ActiveRecord::Migration
  def change
    add_column :fashionposts, :user, :refereneces
  end
end
