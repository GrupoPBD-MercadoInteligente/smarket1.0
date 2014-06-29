class EstadoRemate < ActiveRecord::Base
  self.table_name = 'estado_remate'
  self.primary_key = 'estado_subasta_id'
  belongs_to :estado_subasta
end

