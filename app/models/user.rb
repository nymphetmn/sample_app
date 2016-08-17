class User < ApplicationRecord
  validates(:name, length: { maximum: 50 }, presence: true )
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX })
end
