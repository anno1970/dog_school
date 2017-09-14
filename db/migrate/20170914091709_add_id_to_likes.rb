class AddIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :user_id, :integer
    add_column :likes, :tweet_id, :integer
  end
end
