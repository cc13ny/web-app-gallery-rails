class Company < ApplicationRecord

  scope :ordered, -> { order(:business_name) }
end
