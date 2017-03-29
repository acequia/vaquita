class ApplicationController < ActionController::API
  # Including this module does not authenticate by default. A controller
  # wishing to authenticate a specific action can use, for example,
  #
  #   before_action :authenticate_user
  #
  # to test for valid credentials for a User model. Knock returns
  #
  #   head :unauthorized
  #
  # if it can't find them.
  include Knock::Authenticable
end
