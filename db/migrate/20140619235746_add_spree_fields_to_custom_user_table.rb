class AddSpreeFieldsToCustomUserTable < ActiveRecord::Migration
  def up
    add_column "usuarios", :spree_api_key, :string, :limit => 48
    add_column "usuarios", :ship_address_id, :integer
    add_column "usuarios", :bill_address_id, :integer
  end
end
