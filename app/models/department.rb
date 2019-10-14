class Department < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 100 }, uniqueness: { case_sensitive: false }
end
