class User < ActiveRecord::Base
  attr_accessor :password

  validates :username, :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  def self.find_by_credentials(username, password)
    user = User.find_by_username(username)
    return nil unless user

    User.find_by(username: username, password: password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCRypt::Password.create(password)
  end

  def is_password?(password)
    BCRypt::Password.new(password)

  end

  def reset_token!

  end

  private
  def ensure_session_token
    
  end
end
