class Document < ApplicationRecord
  belongs_to :booking
  has_paper_trail
end
