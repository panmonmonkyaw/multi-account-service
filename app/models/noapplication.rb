class Noapplication < ActiveRecord::Base
	belongs_to :userprofiles, :dependent => :destroy
	validates :no_of_application, :path, presence: true
end
