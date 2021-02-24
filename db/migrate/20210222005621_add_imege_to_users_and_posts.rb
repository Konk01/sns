class AddImegeToUsersAndPosts < ActiveRecord::Migration[6.0]
  def change
	  add_column :users, :Avatar, :string
	  add_column :posts, :imige, :string
  end
end
