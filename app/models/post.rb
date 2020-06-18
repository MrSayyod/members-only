class Post < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2 }
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 4 }, confirmation: true
  validates :password_confirmation, presence: true
  
end
