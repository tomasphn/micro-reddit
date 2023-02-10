class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1 }
  validates :link, presence: true

  belongs_to :user
  has_many :comments
end
