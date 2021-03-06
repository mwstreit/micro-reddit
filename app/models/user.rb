class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  has_many :posts
  has_many :comments

end
