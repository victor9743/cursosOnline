class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters_instrutor, if: :devise_controller?
    before_action :configure_permitted_parameters_aluno, if: :devise_controller?
    before_action :configure_permitted_parameters_admin, if: :devise_controller?

    def after_sign_in_path_for(resource)
        if resource.is_a?(Aluno)
            alunos_dashboard_index_path(resource)
        elsif resource.is_a?(Admin)
            admins_dashboard_index_path(Admin)
        elsif resource.is_a?(Instrutor)
            instrutores_dashboard_index_path(Instrutor)
        else
            root_path
        end
    end
      

    protected

    def logInfo(mensagem)
        Log.create!(
            descricao: mensagem
        )
    end

    def configure_permitted_parameters_instrutor
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :nome_completo, :biografia])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nome, :nome_completo, :biografia])
    end

    def configure_permitted_parameters_aluno
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nome])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nome])
    end

    def configure_permitted_parameters_admin
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nome])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nome])
    end
end
