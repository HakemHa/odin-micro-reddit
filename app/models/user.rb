class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :name, length: {
    in: 1..32,
    wrong_length: "Name must have between 1 and 32 characters"
  }
end
