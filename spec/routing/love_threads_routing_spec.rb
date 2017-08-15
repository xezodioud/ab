require "rails_helper"

RSpec.describe LoveThreadsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/love_threads").to route_to("love_threads#index")
    end

    it "routes to #new" do
      expect(:get => "/love_threads/new").to route_to("love_threads#new")
    end

    it "routes to #show" do
      expect(:get => "/love_threads/1").to route_to("love_threads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/love_threads/1/edit").to route_to("love_threads#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/love_threads").to route_to("love_threads#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/love_threads/1").to route_to("love_threads#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/love_threads/1").to route_to("love_threads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/love_threads/1").to route_to("love_threads#destroy", :id => "1")
    end

  end
end
