class Post < ApplicationRecord
  attribute :karma, :integer, default: 0
  has_many :comments
  belongs_to :user
  validates :title, uniqueness: true
  validates :title, :body, presence: true
  validates :user, presence: true
end
