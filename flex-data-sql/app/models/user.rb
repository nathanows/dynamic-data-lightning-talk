class User < ActiveRecord::Base
  has_many :custom_attributes
  has_secure_password
end
