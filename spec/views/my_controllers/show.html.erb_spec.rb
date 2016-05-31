require 'rails_helper'

RSpec.describe "my_controllers/show", type: :view do
  before(:each) do
    @my_controller = assign(:my_controller, MyController.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
