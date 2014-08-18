require "userprofiles_controller"
require "noapplications_controller"
class UserstatusController < ApplicationController
	def user
		@userprofiles = Userprofile.all
		@noapplications = Noapplication.all
	
	end
end
