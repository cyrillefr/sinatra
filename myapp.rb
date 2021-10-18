# frozen_string_literal: true

# myapp.rb
require 'sinatra'

get '/' do
  'rien'
end

get '/auth/twitter/callback' do
  "oauth_token: #{params['oauth_token']}" \
    " oauth_verifier: #{params['oauth_verifier']}"
end

get '/oauth2/callback' do
  params{'reponse_type'}
end
