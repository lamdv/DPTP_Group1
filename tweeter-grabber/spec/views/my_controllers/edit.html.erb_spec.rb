require 'rails_helper'

RSpec.describe "my_controllers/edit", type: :view do
  before(:each) do
    @my_controller = assign(:my_controller, MyController.create!())
  end

  it "renders the edit my_controller form" do
    render

    assert_select "form[action=?][method=?]", my_controller_path(@my_controller), "post" do
    end
  end
end
