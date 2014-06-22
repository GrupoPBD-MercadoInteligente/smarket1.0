class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  self.table_name = 'usuarios'
  self.primary_key = 'id'
  belongs_to :usuario
  belongs_to :comuna
end

