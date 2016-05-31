require 'rails_helper'

RSpec.describe "MyControllers", type: :request do
  describe "GET /my_controllers" do
    it "works! (now write some real specs)" do
      get my_controllers_path
      expect(response).to have_http_status(200)
    end
  end
end
