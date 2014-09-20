class User < ActiveRecord::Base
  validates :username, :password, presence: true
  validates :password, length: { minimum: 6 }
end
