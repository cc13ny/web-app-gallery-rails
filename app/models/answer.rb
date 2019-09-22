class Answer < ApplicationRecord
  include Commentable

  belongs_to :question
  belongs_to :user
end