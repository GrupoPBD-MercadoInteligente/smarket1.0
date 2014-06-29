class Comuna < ActiveRecord::Base
  self.table_name = 'comuna'
  self.primary_key = 'comuna_id'
  has_many :usuarios, :class_name => "Usuario"
  belongs_to :provincia
end

