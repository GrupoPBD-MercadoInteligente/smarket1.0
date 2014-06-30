class ProductoOfertado < ActiveRecord::Base
  self.table_name = 'producto_ofertado'
  self.primary_key = 'producto_of_id '
  #inherits_from :producto
  belongs_to :usuario
  belongs_to :compra_venta_normal
  belongs_to :producto

end

