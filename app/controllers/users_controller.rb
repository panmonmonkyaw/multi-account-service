# class UsersController < ApplicationController
#   def index
#   	@users = User.all
#   end
#   def new
#   	@user = User.new
#   end

#   def create
#   	@user =User.new(user.params)
#   	if @user.save
#   		redirect_to root_url, :notice => "Signed up!"
#   	else
#   		render "new"
#   end
#   end 
#   private
#   def user.params
#   	params.require(:user).permit(:email, :password, :password_confirmation)
#   end
# end
