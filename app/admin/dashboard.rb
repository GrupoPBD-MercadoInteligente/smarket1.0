ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }



  content title: proc{ I18n.t("active_admin.dashboard") } do


columns do
    column do
        panel "Usuarios" do
            ul do
                table_for Usuario.order("remember_created_at desc").limit(5) do
                    column "Username", :usuario_nombre_usuario
                    column "RUT", :usuario_rut
                    column "Email", :email
                end
            end
            strong { link_to "Ver todos los usuarios", admin_usuarios_path}
        end
    end
end


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
