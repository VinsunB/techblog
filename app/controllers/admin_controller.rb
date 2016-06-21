class AdminController < ApplicationController
  
  def new
  end

def create
if params[:name] == ENV["NAME"] && params[:password] == ENV["PASSWORD"]
	session[:admin] = true
redirect_to articles_path
else
redirect_to pages_email_path
end
 end

def destroy
	redirect_to root_path
	session[:admin] = false
end

end
