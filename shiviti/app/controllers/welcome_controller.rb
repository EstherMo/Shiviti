class WelcomeController < ApplicationController
	def index
		@api_key = ENV["GOOGLE_API"]
	end
end
