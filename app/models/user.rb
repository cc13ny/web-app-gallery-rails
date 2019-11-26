class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile, class_name: "UserProfile", dependent: :destroy
  has_many :experiences, class_name: "UserExperience", dependent: :delete_all
  has_many :educations, class_name: "UserEducation", dependent: :delete_all
  has_many :job_applications, dependent: :delete_all

  # validates_presence_of :first_name, :last_name, :email
  validates_presence_of :email

  before_create :init_profile

  def full_name
    [first_name&.strip, last_name&.strip].join(' ')
  end

  private
    def init_profile
      build_profile unless profile
    end
end