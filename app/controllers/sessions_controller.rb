# require "userprofiles_controller"
class SessionsController < ApplicationController
  def new
  end
   def index
  # 	@admins = Admin.all
   end
   # def user
   #    @admins  = Admin.all
   # end
  def create
  	admin = Admin.authenticate(params[:email], params[:password])
  	if admin
  		session[:admin_id] = admin.id
  		# redirect_to root_url, :notice => "Loggend in!"
      redirect_to sessions_url, :notice => "Logged in!"
  	else
  		flash.now.alert = "Invalid email or password"
  		render "new"
  	end
  end
end
