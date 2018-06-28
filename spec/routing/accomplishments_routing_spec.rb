require "rails_helper"

RSpec.describe AccomplishmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/accomplishments").to route_to("accomplishments#index")
    end


    it "routes to #show" do
      expect(:get => "/accomplishments/1").to route_to("accomplishments#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/accomplishments").to route_to("accomplishments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/accomplishments/1").to route_to("accomplishments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/accomplishments/1").to route_to("accomplishments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/accomplishments/1").to route_to("accomplishments#destroy", :id => "1")
    end

  end
end
