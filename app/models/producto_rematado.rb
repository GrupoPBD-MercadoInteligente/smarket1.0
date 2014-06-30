class ProductoRematado < ActiveRecord::Base
  self.table_name = 'producto_rematado'
  self.primary_key = 'id'
  #inherits_from :producto
  has_one :compra_remate
end

