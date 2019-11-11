class User < ApplicationRecord
  has_secure_password
  belongs_to :workplace
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  validates :name, presence: true, length: { maximum: 250 }
  validates :email, presence: true, length: { maximum: 250 }, format: { with: email_regex }, uniqueness: { case_sensitive: false }
  validates :phone, length: { maximum: 250 }
  validates :admin, inclusion: { in: [ true, false ] }
end
