require 'rails_helper'

RSpec.describe "UserEducations", type: :request do
  describe "GET /user_educations" do
    it "works! (now write some real specs)" do
      get user_educations_path
      expect(response).to have_http_status(200)
    end
  end
end
