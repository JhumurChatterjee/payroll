class Booking < ApplicationRecord
  has_paper_trail
  has_many :documents
end
