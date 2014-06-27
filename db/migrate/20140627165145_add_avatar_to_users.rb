class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :usuario, :avatar, :string
  end
end
