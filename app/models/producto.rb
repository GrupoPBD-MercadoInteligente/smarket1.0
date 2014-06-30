class Producto < ActiveRecord::Base
  mount_uploader :avatar, FotoUploader	
  self.table_name = 'producto'
  self.primary_key = 'producto_id'
  has_many :producto_ofertados, :dependent => :destroy,:class_name => "ProductoOfertado"
  accepts_nested_attributes_for :producto_ofertados
  #acts_as_superclass, :subtype => 'producto_necesitado', :subtype => 'producto_rematado', :subtype => 'producto_ofertado', :subtype => 'prod_of_nec'
  belongs_to :valor, :class_name => "Valor"
  has_many :clases, :class_name => "Clase", :foreign_key => "clase_id"
end

