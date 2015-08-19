class User < ActiveRecord::Base
  has_secure_password
  has_many :comments
  # validates :password, presence: true,
  #                   length: { minimum: 5 }
end
