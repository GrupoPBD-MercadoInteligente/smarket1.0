class Region < ActiveRecord::Base
  self.table_name = 'region'
  self.primary_key = 'region_id'
  has_many :provincia_units
  belongs_to :region
end

