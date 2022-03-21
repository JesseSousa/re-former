class User < ApplicationRecord
  validates :username, presence: true, length: { in: 5..20 }, uniqueness: true
  validates :email, presence: true, uniqueness: true, length: { in: 5..20 }
  validates :password, presence: true, uniqueness: true, length: { minimum: 8 }
end
