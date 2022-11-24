class Comment < ApplicationRecord
  attribute :karma, :integer, default: 0
  belongs_to :post
  belongs_to :user
  validates :post, presence: true
  validates :user, presence: true

end
