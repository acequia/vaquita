require 'test_helper'

describe UserTokenController do
  describe '.create' do
    let(:existing_user) { create :user }

    it 'responds with a token if provided with valid credentials' do
      post user_token_path, params: {
        auth: { email: existing_user.email, password: existing_user.password }
      }

      must_respond_with :success

      encoded_token = json_response['jwt']
      encoded_token.must_be :present?

      decoded_token = Knock::AuthToken.new(token: encoded_token)
      decoded_token.entity_for(User).must_equal existing_user
    end

    it 'responds with 404 if provided with wrong password' do
      post user_token_path, params: {
        auth: { email: existing_user.email, password: 'not the user password' }
      }

      must_respond_with :not_found

      json_response['jwt'].must_be_nil
    end

    it 'responds with 404 if provided with wrong user' do
      post user_token_path, params: {
        auth: { email: 'inexistent@email.com', password: 'not the user password' }
      }

      must_respond_with :not_found

      json_response['jwt'].must_be_nil
    end
  end
end
