require 'rails_helper'

RSpec.describe "my_controllers/new", type: :view do
  before(:each) do
    assign(:my_controller, MyController.new())
  end

  it "renders new my_controller form" do
    render

    assert_select "form[action=?][method=?]", my_controllers_path, "post" do
    end
  end
end
