# Users own or manage a specific set of devices.
class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true
end
