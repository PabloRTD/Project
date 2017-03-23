<<<<<<< HEAD
class FrontpageController < ApplicationController

	def Home
	end

	def MoneyQuestion
	end

	def WeatherQuestion
	end

	def PopulationQuestion
	end

	def LanguageQuestion
	end

	def TravelersQuestion
	end	

	def Booking
	end

	def HasQuestion
	end

	def KnowWhere
	end
end

=======
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
>>>>>>> 04b42879704a023ca940527b1909841d601357e1
