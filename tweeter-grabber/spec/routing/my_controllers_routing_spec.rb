require "rails_helper"

RSpec.describe MyControllersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/my_controllers").to route_to("my_controllers#index")
    end

    it "routes to #new" do
      expect(:get => "/my_controllers/new").to route_to("my_controllers#new")
    end

    it "routes to #show" do
      expect(:get => "/my_controllers/1").to route_to("my_controllers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my_controllers/1/edit").to route_to("my_controllers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/my_controllers").to route_to("my_controllers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_controllers/1").to route_to("my_controllers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_controllers/1").to route_to("my_controllers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_controllers/1").to route_to("my_controllers#destroy", :id => "1")
    end

  end
end
