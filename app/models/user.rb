class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 50 },
                       format: { with: /[A-Za-z\d-]+/ },
                       uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email   , presence: true, length: { maximum: 255 },
                       format: { with: VALID_EMAIL_REGEX },
                       uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { maximum: 20, minimum: 6 }
end
