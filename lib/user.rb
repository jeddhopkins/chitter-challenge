require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'
require 'dm-postgres-adapter'

class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String, :unique => true, :required => true
  property :first_name, String, :required => true
  property :last_name, String, :required => true
  property :email, String, :unique => true, :required => true
  property :password, Serial, :required => true

end
