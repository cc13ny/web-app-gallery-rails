require 'rails_helper'

RSpec.describe "PositionVariants", type: :request do
  describe "GET /position_variants" do
    it "works! (now write some real specs)" do
      get position_variants_path
      expect(response).to have_http_status(200)
    end
  end
end
