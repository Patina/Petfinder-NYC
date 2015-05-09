class Pet < ActiveRecord::Base
	
zip_code = [ 10001..10040, 10044, 10048, 10065, 10069, 10075, 10111, 10115, 10128, 10280, 
10282, 11201, 11203..11226, 11228..11239, 11251, 11001, 11004, 11005, 11040, 11096, 
11101..11106, 11109, 11354..11369, 11371..11375, 11378, 11379, 11385, 11411..11422, 
11426..11430, 11432..11436, 11451, 11691, 11692, 11694, 11697, 10451..10462, 10465..10475, 
10301..10314 ]

def location
	@location = zip_code
	if @zip_code == true
		return zip_code
	else
		puts "Please enter a valid New York City zip code, or choose by borough"
end