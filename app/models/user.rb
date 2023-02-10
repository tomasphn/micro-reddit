class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 5 }
end
