json.array!(@usuarios) do |usuario|
  json.extract! usuario,:usuario_id, :comuna_id, :usuario_nombre, :usuario_apellidopat, :usuario_apellidomat, :usuario_rut, :email, :usuario_nombre_usuario, :password, :usuario_vip, :usuario_calle, :usuario_numero_calle, :usuario_villa, :usuario_numero_depto, :usuario_bloque
  json.url usuario_url(usuario, format: :json)
end
