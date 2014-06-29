class EstadoNotificacion < ActiveRecord::Base
  self.table_name = 'estado_notificacion'
  self.primary_key = 'id'
  has_many :notificationes, :class_name => "Notificacion"
end

