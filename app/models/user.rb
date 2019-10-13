class User < ApplicationRecord
  email_regex = /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i
  has_secure_password
  belongs_to :organization

  validates :name, length: { maximum: 250 }, presence: true
  validates :email, length: { maximum: 250 }, presence: true, format: { with: email_regex }, uniqueness: { case_insentive: true }
end
