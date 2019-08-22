class Event < ApplicationRecord
  scope :published, -> { where(published: true) }
  scope :ordered, -> { order(title: :asc) } #ToDo: date desc, start asc, end asc
  scope :ordered_by_time, -> { order(starts_at: :desc).order(ends_at: :desc) }
  # scope :ordered_by_created_time, -> { order(created: :asc) }


  # ToDo: move to decorator in the future
  def time_range
    starts_at.strftime('%m-%d %H:%m') + ' - ' + ends_at.strftime('%H:%m, %Y')
  end
end