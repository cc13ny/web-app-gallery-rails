class Job < ApplicationRecord
  belongs_to :company
  has_many :job_applications, dependent: :delete_all
end
