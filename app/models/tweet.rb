class Tweet < ApplicationRecord
  belongs_to :user

  scope :ordered, -> { order(created_at: :desc) }
end
