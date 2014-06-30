class EstadoRemate < ActiveRecord::Base
  self.table_name = 'estado_remate'
  self.primary_key = 'estado_subasta_id'
  has_many :remates, :class_name => "Remate"
end

