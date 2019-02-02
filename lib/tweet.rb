require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'
require 'dm-postgres-adapter'

class Tweet
  include DataMapper::Resource

  property :id, Serial
  property :body, String
  property :created_at, DateTime
end
