class SheltersController < ApplicationController
  	before_action :petfinder_api


  def index
	petfinder = petfinder_api
	shelters = petfinder.find_shelters(zip_code, count: 25)

  end

  def shelter_params
    params.require(:shelter).permit(:zip_code)
  end


private
	def petfinder_api
		Petfinder::Client.new('688ee530a00d023570937d905bc9fc3c', 'cbe668e242d17b16fee3e6ac17769c8c')
	end	
end
