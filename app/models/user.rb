class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  has_many :posts
  has_secure_password
end
