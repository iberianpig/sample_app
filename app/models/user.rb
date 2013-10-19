class User < ActiveRecord::Base
  # before_save{ self.email = email.downcase}
  before_save { email.downcase! }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # 大文字・小文字を無視した一意性の検証
  validates :email,
              presence: true,
              format: {with: VALID_EMAIL_REGEX },
              uniqueness: {case_sensitive: false}
  validates :password,
              length: {minimum:6}
   has_secure_password
end