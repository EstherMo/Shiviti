class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :set_user_time_zone

  # def set_user_time_zone
  #   Time.zone = "EST"
  #   #current_user.time_zone
  #   # => #<ActiveSupport::TimeZone:0x007fb80d1374d8 @name="Pacific/Honolulu" [...] >
  # end
end
