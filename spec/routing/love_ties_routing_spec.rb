require "rails_helper"

RSpec.describe LoveTiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/love_ties").to route_to("love_ties#index")
    end

    it "routes to #new" do
      expect(:get => "/love_ties/new").to route_to("love_ties#new")
    end

    it "routes to #show" do
      expect(:get => "/love_ties/1").to route_to("love_ties#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/love_ties/1/edit").to route_to("love_ties#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/love_ties").to route_to("love_ties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/love_ties/1").to route_to("love_ties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/love_ties/1").to route_to("love_ties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/love_ties/1").to route_to("love_ties#destroy", :id => "1")
    end

  end
end
