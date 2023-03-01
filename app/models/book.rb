class Book < ApplicationRecord
  has_paper_trail
  belongs_to :author
  validates :title, presence: true
end
