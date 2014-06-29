class Producto < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader	
  self.table_name = 'producto'
  self.primary_key = 'producto_id'
  acts_as_superclass, :subtype => 'producto_necesitado', :subtype => 'producto_rematado', :subtype => 'producto_ofertado', :subtype => 'producto_necesitado'
  belongs_to :valor, :class_name => "Valor"
  has_many :clases, :class_name => "Clase", :foreign_key => "clase_id"
end

