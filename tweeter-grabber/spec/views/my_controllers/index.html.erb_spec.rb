require 'rails_helper'

RSpec.describe "my_controllers/index", type: :view do
  before(:each) do
    assign(:my_controllers, [
      MyController.create!(),
      MyController.create!()
    ])
  end

  it "renders a list of my_controllers" do
    render
  end
end
