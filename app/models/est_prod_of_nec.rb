class EstProdOfNec < ActiveRecord::Base
  self.table_name = 'est_prod_of_nec'
  self.primary_key = 'estado_prod_of_necesidad_id'
  belongs_to :estado_prod_of_necesidad
  has_many :prod_of_necs, :class_name => "ProdOfNec"
  belongs_to :producto_necesitado
end

