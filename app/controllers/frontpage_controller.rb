class FrontpageController < ApplicationController
	#Class scoped variable for holding our user's current preferences for location
	#should most likely be refactored into a cookie-based session variable with an expiration time
	@@LocationInfo = {}
	
	def Home
	end

	def PopulationQuestion
	end

	def PopulationData
		@@LocationInfo[:Pop] = params[:pop]
		puts @@LocationInfo
		redirect_to '/Money'
	end

	def MoneyQuestion
	end

	def MoneyData
		@@LocationInfo[:MoneyRangeId] = params[:money]
		puts @@LocationInfo
		redirect_to '/Weather'
	end

	def WeatherQuestion
	end

	def LanguageQuestion
	end

	def TravelersQuestion
	end	

	def Booking
	end
		
end

