require "rails_helper"

RSpec.describe QuizesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/quizes").to route_to("quizes#index")
    end

    it "routes to #show" do
      expect(:get => "/quizes/1").to route_to("quizes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/quizes").to route_to("quizes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quizes/1").to route_to("quizes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quizes/1").to route_to("quizes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quizes/1").to route_to("quizes#destroy", :id => "1")
    end
  end
end
