Knock.setup do |config|
  ## How long before a token is expired. If nil is provided, token will
  ## last forever.
  config.token_lifetime = 1.day

  ## Configure the algorithm used to encode the token
  config.token_signature_algorithm = 'HS256'

  ## Configure the key used to sign tokens.
  config.token_secret_signature_key = -> { Rails.application.secrets.jwt_secret }
end
