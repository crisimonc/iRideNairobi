class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
     new_motorcycle_booking_path(params["moto"].to_i)
  end
end
