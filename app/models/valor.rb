class Valor < ActiveRecord::Base
  self.table_name = 'valor'
  self.primary_key = 'valor_id'
  belongs_to :propiedad
  belongs_to :producto
end

