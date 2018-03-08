require 'rails_helper'

RSpec.describe "Newcables", type: :request do
  it "creates a cable" do
  #  cable = Factory(:wire)
    visit wires_path
    click_link "New"
    fill_in "Wire number", :with => "100"
    click_button "Create"
  end
end
