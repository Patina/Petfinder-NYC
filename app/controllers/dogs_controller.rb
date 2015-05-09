class DogsController < ApplicationController
	# before_action :petfinder_api

	def index
		@dogs = petfinder.find_pets('dog', ZIPCODE, count: 100)
		# @breeds = petfinder.breeds('cat')

		# count = params[:count] ? params[:count] : 100 

		# @location = zip_code
  		# @shelters = petfinder.find_shelters(params[:zipcode], count: params[:count])  #params[:zip_code])

		# @shelters = petfinder.find_shelters('11217', count: params[:count])  #params[:zip_code])

  		#@pets = petfinder.find_pets('dog', "10002", count: 25)
	end

  	def show
  		@dog = petfinder.pet(params[:id])
  		# @anything_pet = petfinder_api
  		# petfinder = petfinder_api
  		# @pets = petfinder.find_pets('dog', '11235')
  		# # @this_pet = petfinder.pet('23749930').photos.first.thumbnail
  		# @this_pet = petfinder.pet('23749930').photos
  	end

private
	def petfinder
		Petfinder::Client.new('688ee530a00d023570937d905bc9fc3c', 'cbe668e242d17b16fee3e6ac17769c8c')
	end	
end
	