class ApplicationController < ActionController::Base
  # TODO Replace it with actual authorization
  def current_user
    @current_user ||= User.find(2)
  end
end
