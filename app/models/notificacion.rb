class Notificacion < ActiveRecord::Base
  self.table_name = 'notificacion'
  self.primary_key = 'notificacion_id '
  belongs_to :usuario
  belongs_to :estado_not
end

