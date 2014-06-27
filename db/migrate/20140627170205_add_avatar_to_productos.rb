class AddAvatarToProductos < ActiveRecord::Migration
  def change
    add_column :producto, :avatar, :string
  end
end
