class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2 }
  validates :post, presence: true, length: { in: 1..500 }
end
