class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def admin_auth
	if !session[:admin]
	flash[:notice] = "you can't do that"
	redirect_to root_path
	end
end

def admin?
session[:admin]
end

helper_method(:admin?)

end
