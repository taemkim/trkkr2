class User < ActiveRecord::Base
  has_secure_password
  has_many :picks

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, on: :create, length: {minimum: 5}    
end