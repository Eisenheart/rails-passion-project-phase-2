class User < ActiveRecord::Base
  has_many :comments
  # validates :password, presence: true,
  #                   length: { minimum: 5 }
end
