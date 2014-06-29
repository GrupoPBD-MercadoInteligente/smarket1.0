class Condicion < ActiveRecord::Base
  self.table_name = 'condicion'
  self.primary_key = 'condicion_id'
  belongs_to :tipo_trans
end

