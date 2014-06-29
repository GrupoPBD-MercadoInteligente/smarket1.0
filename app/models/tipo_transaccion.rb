class TipoTransaccion < ActiveRecord::Base
  self.table_name = 'tipo_transaccion'
  self.primary_key = 'id'
  acts_as_superclass, :subtype => 'compra_venta_especial', :subtype => 'compra_venta_normal', :subtype => 'compra_remate'
end

