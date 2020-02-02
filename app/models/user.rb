class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :user_profile, dependent: :destroy
  has_many :user_experiences, dependent: :delete_all
  has_many :user_educations, dependent: :delete_all

  after_create :init_profile

  def init_profile
    self.create_user_profile!
  end

  def full_name
    [first_name, last_name].join(' ')
  end
end
