class Workplace < ApplicationRecord
  before_validation :format_name
  after_create :create_tenant

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false },
                   format: { with: /\A[-a-z0-9]+\z/, message: "only allows letters, hyphen & numbers" }

  private

  def format_name
    name.downcase.split(" ").join("-")
  end

  def create_tenant
    Apartment::Tenant.create(name)
  end
end
