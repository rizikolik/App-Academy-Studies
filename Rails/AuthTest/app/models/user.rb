class User < ApplicationRecord
  attr_reader :password

  validates :username, presence: true
  validates :password_digest, presence: { message: 'Password can\'t be blank' }
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :session_token, presence: true
  after_initialize :ensure_session_token

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end
    def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
      end
      def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
      end
      def reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save!
        self.session_token
      end
    
      private
      def ensure_session_token
        # we must be sure to use the ||= operator instead of = or ||, otherwise
        # we will end up with a new session token every time we create
        # a new instance of the User class. This includes finding it in the DB!
        self.session_token ||= self.class.generate_session_token
      end
end
