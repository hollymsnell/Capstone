class User < ApplicationRecord
  has_many :programs
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
