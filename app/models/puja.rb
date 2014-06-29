class Puja < ActiveRecord::Base
  self.table_name = 'puja'
  self.primary_key = 'puja_id'
  belongs_to :sub
  belongs_to :usuario
end

