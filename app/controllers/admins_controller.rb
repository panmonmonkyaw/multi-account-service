
class AdminsController < ApplicationController
  before_action :set_admin, only: [:destroy]
	def index
		@admins = Admin.all
	end

  def new
  	@admin = Admin.new
  end

  # def show
  #   @admins = Admin.all
  # end
  # def show
  #    # @admins = Admin.all

    
  # end
 

# for admin 

  def show 
  
  end

# for admin

  def create
  	@admin = Admin.new(admin_params) 
  	 # respond_to do |format|
  	if @admin.save
  		 # redirect_to root_url, :notice =>  "Signed up!"
       redirect_to admins_url, :notice => "Signed Up!"
         # render :index, :notice =>  "Signed up!"
  		# format.html { redirect_to admins_url, notice: 'Sign up!' }
    #     format.json { render :show, status: :created, location: @admin }
  	else 
  		  render "new"
  		 # format.html {render 'new'}
# end
end
end

# def destroy
#    @admin = Admin.find(params[:id])
#     # respond_to do |format|
    #  @admin.destroy
      # format.html { redirect_to admin_url, notice: 'Admin was successfully destroyed.' }
      # format.json { head :no_content }
  # end
# def destroy
#   session[:admin_id] = nil
#   flash[:notice] = "You've been logged out successfully."
#   redirect_to "/" 
# end

# def delete
#   @admin = Admin.find(params[:id])
#   @admin.destroy
# end

def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Noapplication was successfully destroyed.' }
      format.json { head :no_content }
    
    end
  end


private

def set_admin
      @admin = Admin.find(params[:id])
    end

def admin_params
	params.require(:admin).permit(:email, :password, :password_confirmation)
end
end
