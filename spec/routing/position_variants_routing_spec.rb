require "rails_helper"

RSpec.describe PositionVariantsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/position_variants").to route_to("position_variants#index")
    end

    it "routes to #new" do
      expect(:get => "/position_variants/new").to route_to("position_variants#new")
    end

    it "routes to #show" do
      expect(:get => "/position_variants/1").to route_to("position_variants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/position_variants/1/edit").to route_to("position_variants#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/position_variants").to route_to("position_variants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/position_variants/1").to route_to("position_variants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/position_variants/1").to route_to("position_variants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/position_variants/1").to route_to("position_variants#destroy", :id => "1")
    end
  end
end
