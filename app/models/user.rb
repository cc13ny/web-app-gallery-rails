class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # include ::Concerns::BitRoles
  #
  # self.roles_list = %w[admin sibian_team volunteer]
end
