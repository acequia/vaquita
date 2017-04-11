# Users own or manage a specific set of devices.
class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true

  # Generates these claims for the authentication token
  def to_token_payload
    {
      sub: id,
      email: email
    }
  end
end
