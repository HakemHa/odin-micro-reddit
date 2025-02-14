class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, length: { maximum: 128 }
  validates :text, length: { maximum:  16384 }
end
