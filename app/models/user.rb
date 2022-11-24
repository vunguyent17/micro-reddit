class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, :email, uniqueness: true
  validates :username, :email, :password, presence: true
end
