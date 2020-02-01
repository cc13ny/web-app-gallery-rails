require "rails_helper"

RSpec.describe UserExperiencesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/user_experiences").to route_to("user_experiences#index")
    end

    it "routes to #new" do
      expect(:get => "/user_experiences/new").to route_to("user_experiences#new")
    end

    it "routes to #show" do
      expect(:get => "/user_experiences/1").to route_to("user_experiences#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_experiences/1/edit").to route_to("user_experiences#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_experiences").to route_to("user_experiences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_experiences/1").to route_to("user_experiences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_experiences/1").to route_to("user_experiences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_experiences/1").to route_to("user_experiences#destroy", :id => "1")
    end
  end
end
