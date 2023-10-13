class ApplicationController < ActionController::Base
  DeviseTokenAuth::Concerns::SetUserByToken
  #before_action :authenticate_user!
end
