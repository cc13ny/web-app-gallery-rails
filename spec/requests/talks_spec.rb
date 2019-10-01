require 'rails_helper'

RSpec.describe "Talks", type: :request do
  describe "GET /talks" do
    it "works! (now write some real specs)" do
      get talks_path
      expect(response).to have_http_status(200)
    end
  end
end
