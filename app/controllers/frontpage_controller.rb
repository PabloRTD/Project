
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

	def WeatherData
			@@LocationInfo[:WeatherId] = params[:weather]
		puts @@LocationInfo
		redirect_to '/Language'
	end

	def LanguageQuestion
	end

def LanguageData
			@@LocationInfo[:LanguageId] = params[:language]
		puts @@LocationInfo
		redirect_to '/Travelers'
	end

	def TravelersQuestion
	end	

def TravelersData
			@@LocationInfo[:TravelersId] = params[:travelers]
		puts @@LocationInfo
		redirect_to '/Book'
	end

	def Booking
		# puts @@LocationInfo
		@data = @@LocationInfo
		@Destination = User.where("Langauge = :langauge and Population > :population", {langauge:"English", population: 50000}).first
	end
		
end

