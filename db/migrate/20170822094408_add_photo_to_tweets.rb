class AddPhotoToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :photo, :text
    add_column :tweets, :movie, :text
    add_column :tweets, :likes_count, :integer
    add_column :tweets, :comment_id, :integer
    remove_column :tweets, :image, :text
  end
end
