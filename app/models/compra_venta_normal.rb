class CompraVentaNormal < ActiveRecord::Base
  self.table_name = 'compra_venta_normal'
  self.primary_key = 'id'
  inherits_from :tipo_transaccion
  belongs_to :usuario
  belongs_to :usu_usuario
  belongs_to :producto_of
end

