class User < ApplicationRecord
  has_secure_password

 
  validates :email, presence: true, uniqueness: true

  # attr_accessor :password, :password_confirmation
  # validates :email, presence: true, uniqueness: true
end
