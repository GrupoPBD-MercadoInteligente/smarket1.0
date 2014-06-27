class Usuario < ActiveRecord::Base
  mount_uploader :avatar, FotoUploader
  include ActiveModel::Validations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
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

  belongs_to :usuario
  belongs_to :comuna

end



