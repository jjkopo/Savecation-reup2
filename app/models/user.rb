class User < ApplicationRecord
  has_many :schedules

  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}
  has_secure_password
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  validates_presence_of :username, :email, :password
end
