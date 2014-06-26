class ProvinciaUnit < ActiveRecord::Base
  self.table_name = 'provincia_unit'
  self.primary_key = 'provincia_id'
  has_many :comunas
  belongs_to :provincia
  belongs_to :region
end

