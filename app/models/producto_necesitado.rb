class ProductoNecesitado < ActiveRecord::Base
  self.table_name = 'producto_necesitado'
  self.primary_key = 'prod_nec_id'
  #inherits_from :producto
  has_many :prod_of_nec
  belongs_to :usuario
end

