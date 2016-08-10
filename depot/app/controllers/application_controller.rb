class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def date
    @date = Time.now.strftime("%b %d, %Y")
  end

  def time
    @time = Time.now.strftime("%I:%M %p")
  end
  
end
