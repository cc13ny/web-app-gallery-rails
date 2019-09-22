class Comment < ApplicationRecord
  include Commentable

  belongs_to :commentable, polymorphic: true
  belongs_to :user
end
