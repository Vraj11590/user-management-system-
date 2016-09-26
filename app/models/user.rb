class User < ApplicationRecord
  #using active record to lowercase all emails
  before_save {email.downcase!}

  validates :name, presence: true, length: {maximum: 40}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
             length:{maximum: 255},
             format: {with: VALID_EMAIL_REGEX},
             uniqueness: {case_sensitive: false}
  #database index's create unique columns kind of like primary keys

  validates :phone, presence: false, length:{maximum: 10}

  has_secure_password
  validates :password, length: {minimum: 6}, presence: true

end
