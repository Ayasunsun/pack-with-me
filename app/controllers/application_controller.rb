class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, :authenticate_user!, if: :devise_controller?

end
