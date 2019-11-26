class UserProfileForm < Reform::Form
  property :email,              on: :user
  properties :gender, :age,     on: :profile

  model :user, on: :user

  validates :email, :gender, presence: true
  validates :age, numericality: true
end