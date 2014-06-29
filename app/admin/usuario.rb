ActiveAdmin.register Usuario do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column "Username", :usuario_nombre_usuario
    column "RUT", :usuario_rut
    column "Nombre", :usuario_nombre
    column "Apellido paterno", :usuario_apellidopat
    column "Apellido materno", :usuario_apellidomat
    column "Email", :email
  
    actions
  end
end
