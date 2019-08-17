class Event < ApplicationRecord
  scope :published, -> { where(published: true) }
  scope :ordered, -> { order(title: :asc) } #ToDo: date desc, start asc, end asc
  scope :ordered_by_time, -> { order(starts_at: :desc).order(ends_at: :desc) }
  # scope :ordered_by_created_time, -> { order(created: :asc) }
end