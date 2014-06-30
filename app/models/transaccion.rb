class Transaccion < ActiveRecord::Base
  self.table_name = 'transaccion'
  self.primary_key = 'transaccion_id'
  belongs_to :tipo_trans
  has_one :comision
  has_one :ganancia

end

