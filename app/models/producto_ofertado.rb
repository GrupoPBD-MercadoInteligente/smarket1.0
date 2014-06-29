class ProductoOfertado < ActiveRecord::Base
  self.table_name = 'producto_ofertado'
  self.primary_key = 'id'
  inherits_from :producto
  belongs_to :producto_of
  belongs_to :usuario
end

