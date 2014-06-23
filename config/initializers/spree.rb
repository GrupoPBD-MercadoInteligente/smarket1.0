 # Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "Smarket"
  config.logo = "store/smarket.png"
end

Spree.user_class = "Usuario"

          Rails.application.config.to_prepare do
            require_dependency 'spree/authentication_helpers'
          end

Spree::PermittedAttributes.user_attributes << :usuario_nombre
Spree::PermittedAttributes.user_attributes << :usuario_apellidopat