class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string, :null => false, :unique => true
  end
end
