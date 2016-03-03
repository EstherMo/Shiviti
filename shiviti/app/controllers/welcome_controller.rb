class WelcomeController < ApplicationController
	def index
		@api_key = ENV["GOOGLE_API"]
		# binding.pry
	end

	def progress
	end

	# def send_text_message(number)
	#   number_to_send_to = number

	#   twilio_sid = "ACca4bce79e5cdb95990cdf5a84b89c45b"
	#   twilio_token = "5f5703217d9812afe53c1fceea9d0b3f"
	#   twilio_phone_number = "5404694050"

	#   @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

	#   @twilio_client.account.sms.messages.create(
	#     :from => "+1#{twilio_phone_number}",
	#     :to => number_to_send_to,
	#     :body => "This is a reminder from the Shiviti App. Happy Meditating :)"
	#   )
	# end
end
