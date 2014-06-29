class ProdOfNec < ActiveRecord::Base
  self.table_name = 'prod_of_nec'
  self.primary_key = 'prod_of_nec_id'
  inherits_from :producto
  belongs_to :usuario
  belongs_to :estado_prod_of_necesidad
  belongs_to :prod_nec
  belongs_to :compra_venta_normal
end

