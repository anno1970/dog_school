class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name_kanji, :string, :null => false
    add_column :users, :last_name_kanji, :string, :null => false
    add_column :users, :first_name_kana, :string, :null => false
    add_column :users, :last_name_kana, :string, :null => false
    add_column :users, :sex, :boolean
    add_column :users, :image, :text
    add_column :users, :tel, :string
    add_column :users, :birthday, :date, :null => false
    add_column :users, :postal_code, :string
    add_column :users, :address, :string, :null => false
    add_column :users, :facebook_id, :string
    add_column :users, :skype_id, :string
    add_column :users, :subscibe, :integer
    add_column :users, :dog_id, :integer
  end
end
