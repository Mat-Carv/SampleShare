class RemoveNicknameFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :nickname, :string
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    add_column :users, :username, :string
  end
end