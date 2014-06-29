class Producto < ActiveRecord::Base
  mount_uploader :avatar, FotoUploader	
  self.table_name = 'producto'
  self.primary_key = 'producto_id'
  belongs_to :producto
  belongs_to :clase
end

