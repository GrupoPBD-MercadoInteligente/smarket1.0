class Comuna < ActiveRecord::Base
  self.table_name = 'comuna'
  self.primary_key = 'comuna_id'
  belongs_to :comuna
  belongs_to :provincia
end

