class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :text, length: { maximum:  16384 }
end
