class Bot < ApplicationRecord
  # A Bot don't belongs to a user until linked
  belongs_to :user, optional: true

  validates :chip_id, uniqueness: true, presence: true
end
