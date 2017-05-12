require "pp"

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

	def Results
  		def fix_date(d)
  		date_regex = /(\d\d\d\d)-(\d\d)-(\d\d)/
  		m = date_regex.match(d)
  			if !m.nil?
  				return "#{m[2]}/#{m[3]}/#{m[1]}"
  			else
  				return ""
  			end
  		end
  	p "$" * 50
  	pp params
  	p "$" * 50
  		if params[:city].to_s.empty?
  				render :json => false
  			return
  		end
  	api = Expedia::Api.new
  	response = api.get_list({
  		:city => params[:city], 
  		:arrivalDate => fix_date(params[:arriving]),
  		:departureDate => fix_date(params[:departing]),
  		:room1 => params[:adults] == "# Adults" ? 1 : params[:adults]
  		})
  		if response.respond_to?(:body)
	  		render :json => response.body["HotelListResponse"]["HotelList"]["HotelSummary"][0...10]
		else
			render :json => response.error_body
		end
  end
end


