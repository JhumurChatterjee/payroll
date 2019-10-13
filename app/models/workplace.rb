class Workplace < ApplicationRecord
  before_validation :format_name

  validates :name, presence: true, length: { minimum: 6, maximum: 50 }, uniqueness: { case_sensitive: false },
                   format: { with: /\A[-a-z0-9]+\z/, message: "only allows letters, hyphen & numbers" }

  def format_name
    name.downcase.split(" ").join("-")
  end
end
