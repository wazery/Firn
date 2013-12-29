require 'digest'

class User < ActiveRecord::Base

  attr_accessor   :password, :password_confirmation
  attr_accessible :name, :email, :password, :password_confirmation

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,     :presence     => true,
                       :length       => { :maximum => 50 }
  validates :email,    :presence     => true,
                       :length       => { :maximum => 50 },
                       :format       => EMAIL_REGEX,
                       :uniqueness   => { :case_sensitive => false }
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :in => 8..40 }

  validates :password_confirmation, :presence => true,
                                    :confirmation => true,
                                    :length       => { :in => 8..40 }

  before_save :encrypt_password

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save(:validate => false) # Bypass validations, to not fail in them
    end
  end

  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    ( user && user.has_password?(submitted_password) ) ? user : nil
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.password_salt == cookie_salt) ? user : nil
  end

  private

  def encrypt_password
    self.password_salt = Digest::SHA2.hexdigest("#{Time.now.utc}--#{password}") if new_record?
    self.encrypted_password = encrypt(password)
  end

  def encrypt(string)
    Digest::SHA2.hexdigest("#{self.password_salt}--#{string}")
  end

end