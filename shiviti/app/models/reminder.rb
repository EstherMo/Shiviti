class Reminder < ActiveRecord::Base
	validates :phone_number, presence: true
  validates :time, presence: true
  belongs_to :user

  after_create :alert

  @@ALERT_TIME = 1.second # minutes before appointment

  # Notify our appointment attendee X minutes before the appointment time
  def alert
    # @twilio_number = ENV['TWILIO_NUMBER']
    # @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
     # binding.pry
    number_to_send_to = self.phone_number

	  twilio_sid = "ACca4bce79e5cdb95990cdf5a84b89c45b"
	  twilio_token = "5f5703217d9812afe53c1fceea9d0b3f"
	  twilio_phone_number = "5404694050"

	  @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
    # time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi 😍 This is a reminder from the Shiviti App. Happy Meditating 🙏"
    
    # @twilio_client.account.sms.messages.create
    message = @twilio_client.account.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => reminder,
    )
    puts message.to
  end

  def when_to_run
    time - @@ALERT_TIME
  end

  handle_asynchronously :alert, :run_at => Proc.new { |i| i.when_to_run }


end
