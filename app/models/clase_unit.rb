class ClaseUnit < ActiveRecord::Base
  self.table_name = 'clase_unit'
  self.primary_key = 'clase_id'
  belongs_to :clase
  belongs_to :cla_clase
end

