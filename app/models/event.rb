class Event < ApplicationRecord
  scope :published, -> { where(published: true) }
  scope :ordered, -> { order(name: :asc) } #ToDo: date desc, start asc, end asc
end