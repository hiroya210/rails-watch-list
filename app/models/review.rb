class Review < ApplicationRecord
  belongs_to :list, dependent: :destroy

  validates :content,:rating, presence: true
  validates :rating, numericality: true, inclusion: { in: 1..5 }
end
