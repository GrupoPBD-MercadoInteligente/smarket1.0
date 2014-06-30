class Remate < ActiveRecord::Base
  self.table_name = 'remate'
  self.primary_key = 'id'
  has_many :pujas, :class_name => "Puja"
  belongs_to :estado_subasta
  belongs_to :usuario
  belongs_to :prod_sub
end

