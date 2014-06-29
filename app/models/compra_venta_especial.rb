class CompraVentaEspecial < ActiveRecord::Base
  self.table_name = 'compra_venta_especial'
  self.primary_key = 'compraventa_id'
  inherits_from :tipo_transaccion
  belongs_to :usuario
  belongs_to :prod_of_nec
  belongs_to :usu_usuario, :class_name => "Usuario"
end

