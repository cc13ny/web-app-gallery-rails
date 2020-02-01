require 'rails_helper'

RSpec.describe "UserExperiences", type: :request do
  describe "GET /user_experiences" do
    it "works! (now write some real specs)" do
      get user_experiences_path
      expect(response).to have_http_status(200)
    end
  end
end
