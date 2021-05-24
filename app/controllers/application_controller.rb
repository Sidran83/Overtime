class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  add_flash_types :danger, :info, :success, :warning
end
