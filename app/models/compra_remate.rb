class CompraRemate < ActiveRecord::Base
  self.table_name = 'compra_remate'
  self.primary_key = 'comprasubasta_id'
  inherits_from :tipo_transaccion
  belongs_to :usuario
  belongs_to :prod_sub
  belongs_to :usu_usuario , :class_name => "Usuario"
end

