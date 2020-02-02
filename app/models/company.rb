class Company < ApplicationRecord

  has_many :jobs, dependent: :delete_all

  scope :ordered, -> { order(:business_name) }
end
