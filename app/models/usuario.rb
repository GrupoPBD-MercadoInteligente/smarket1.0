class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  self.table_name = 'usuarios'
  self.primary_key = 'id'
  belongs_to :usuario
  belongs_to :comuna
end

