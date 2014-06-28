class ClaseUnit < ActiveRecord::Base
  self.table_name = 'clase_unit'
  self.primary_key = 'clase_id'

  has_many :subcategorias, :class_name => "ClaseUnit", :foreign_key => "cla_clase_id", :dependent => :destroy
  belongs_to :categoria_padre, :class_name => "ClaseUnit"
end

