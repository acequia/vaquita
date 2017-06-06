# Users own or manage a specific set of Bots.
class User < ApplicationRecord
  has_secure_password
  has_many :bots

  validates :email, uniqueness: true, presence: true

  # Generates these claims for the authentication token
  def to_token_payload
    {
      sub: id,
      email: email
    }
  end
end
