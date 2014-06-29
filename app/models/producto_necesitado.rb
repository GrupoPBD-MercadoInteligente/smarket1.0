class ProductoNecesitado < ActiveRecord::Base
  self.table_name = 'producto_necesitado'
  self.primary_key = 'id'
  inherits_from :producto
  belongs_to :prod_nec
  belongs_to :usuario
end

