class Usuario < ActiveRecord::Base
  include ActiveModel::Validations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  self.table_name = 'usuario'
  self.primary_key = 'usuario_id'
  validates :usuario_nombre_usuario, :presence => true
  validates :usuario_rut, :presence => true
  validates :usuario_rut, rut: true
  validates :usuario_nombre, :presence => true
  validates :usuario_apellidopat, :presence => true
  validates :usuario_apellidomat, :presence => true
  
  validates :email, :presence => true
  validates :usuario_calle, :presence => true
  validates :usuario_numero_calle, :presence => true
  validates :usuario_villa, :presence => true

  has_many :notificaciones, :class_name => "Notificacion"
  has_many :producto_necesitados, :class_name => "ProductoNecesitado"
  has_many :pujas, :class_name =>"Puja"
  has_many :producto_ofertados
  has_many :compra_venta_normales
  has_many :compra_venta_especiales



end



