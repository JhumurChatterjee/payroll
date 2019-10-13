class Organization < ApplicationRecord
  has_many :users, dependent: :destroy
  validates :subdomain, length: { maximum: 250 }, presence: true, uniqueness: { case_insensitive: true }

  def total_user
    User.where(organization_id: id).count
  end
end
