require "userprofiles_controller"
class UserlistController < ApplicationController
	def userall
		@userprofiles = Userprofile.all
	end
end
