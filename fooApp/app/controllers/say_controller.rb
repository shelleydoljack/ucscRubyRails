class SayController < ApplicationController
  def hello
    @time = Time.now
    @time_in_1_hour = 1.hour.from_now.localtime
  end

  def goodbye
  end
end
