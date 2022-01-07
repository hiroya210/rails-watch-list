class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie, dependent: :destroy

  validates :movie, :list, presence: true
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
end
