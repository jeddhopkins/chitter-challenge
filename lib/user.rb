require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'
require 'dm-postgres-adapter'

class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String, :unique => true
  property :first_name, String
  property :last_name, String
  property :email, String, :unique => true
  property :password, Serial

end
