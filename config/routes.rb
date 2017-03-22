Rails.application.routes.draw do
  # Request a token for users
  post 'user_token' => 'user_token#create'
end
