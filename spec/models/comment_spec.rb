require 'rails_helper'
require "models/concerns/commentable_spec"

RSpec.describe Comment, type: :model do
  it_behaves_like "commentable"

  it { is_expected.to have_db_column(:commentable_id).of_type(:integer) }
  it { is_expected.to have_db_column(:commentable_type).of_type(:string) }

  it { is_expected.to belong_to(:commentable) }
end
