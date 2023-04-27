class User < ApplicationRecord
  # has_secure_password
  attr_accessor :email, :name, :password, :password_confirmation
  validates :email, presence: true, uniqueness: true
end
