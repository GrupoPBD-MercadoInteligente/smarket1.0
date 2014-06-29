class GananciaLiquida < ActiveRecord::Base
  self.table_name = 'ganancia_liquida'
  self.primary_key = 'ganancia_liquida_id'
  belongs_to :transaccion
end

