class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 2 }
  validates :post, presence: true, length: { in: 1..500 }
end
