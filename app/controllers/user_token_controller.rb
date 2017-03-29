# Provides a `create` action for JWT generation. Returns json with
#
#   { "jwt": "token string" }
#
# The token string is a JWT with the following claims:
#
#   - sub: user id
#   - exp: 24 hours
#
class UserTokenController < Knock::AuthTokenController
end
