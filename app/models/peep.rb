require 'data_mapper'
require 'dm-postgres-adapter'
# require_relative 'data_mapper_setup'

class Peep
  include DataMapper::Resource

  property :id,           Serial
  property :content,      String, length: 255
  property :created_at,   DateTime

#belongs_to :user
end
DataMapper.setup(:default, "postgres://localhost/chitter_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
