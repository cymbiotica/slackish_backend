require "rails_helper"

RSpec.describe UserChannelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_channels").to route_to("user_channels#index")
    end


    it "routes to #show" do
      expect(:get => "/user_channels/1").to route_to("user_channels#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_channels").to route_to("user_channels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_channels/1").to route_to("user_channels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_channels/1").to route_to("user_channels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_channels/1").to route_to("user_channels#destroy", :id => "1")
    end

  end
end
