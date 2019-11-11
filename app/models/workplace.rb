class Workplace < ApplicationRecord
  before_validation :format_name
  after_create :create_tenant

  has_many :users, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false },
                   format: { with: /\A[-a-z0-9]+\z/, message: "only allows letters, hyphen & numbers" }

  def total_user
    users.count
  end

  private

  def format_name
    name.downcase.split(" ").join("-")
  end

  def create_tenant
    Apartment::Tenant.create(name)
  end
end
