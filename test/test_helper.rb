ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/pride'

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
end

# FactoryGirl common helpers
FactoryGirl.define do
  sequence :email do |n|
    "random_email_#{n}@example.com"
  end

  sequence :unique_string, 'aaaaaaaa'
end
