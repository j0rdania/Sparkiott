require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  validates :name, :email, :password_digest, presence: true
  validates :email, uniqueness: true

  has_secure_password
end
