class ApplicationController < ActionController::Base
# pundit autorization manager gem
  include Pundit
# manages pundit errors
 rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception


	protected

	# def layout_by_resource
	#   if devise_controller? && resource_name == :admin
	#     "backoffice_devise"
	#   else
	#     "application"
	#   end
	def user_not_authorized
		flash[:alert] = "Você não está autorizado a executar esta ação."
		redirect_to(request.referrer || root_path)
	end
	
end
