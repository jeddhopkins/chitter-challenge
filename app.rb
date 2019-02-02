require 'sinatra'
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'
require 'dm-postgres-adapter'
require './lib/tweet'
# require './lib/printer'
require './lib/user'
require 'sinatra/flash'

class ChitterChallenge < Sinatra::Base

  disable :show_exceptions
  register Sinatra::Flash

  configure :development do
    DataMapper.setup(:default, 'postgres://localhost/Chitter')
    DataMapper.finalize
    DataMapper.auto_upgrade!
  end

  get '/' do
    erb :index
  end

  get '/tweetfeed' do
    erb :tweetfeed
  end

  get '/login' do
    erb :login
  end

  get '/signup' do
    erb :signup
  end


end
