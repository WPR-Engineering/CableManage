require 'rails_helper'

RSpec.describe "Newterminals", type: :request do
  it "creates a terminal" do
  #  cable = Factory(:wire)
    visit terminals_path
    click_link "New"
    fill_in "Terminal number", :with => "100"
    click_button "Create"
    expect(page).not_to have_content("error")
  end
  it "fails to create wire when terminal number is empty but fail if punchblock doesnt exist" do
    visit wires_path
    click_link "New"
    fill_in "Signal type", :with => "100"
    #we will leave all other fields blank to test validations
    click_button "Create"
    expect(page).to have_content("2 error prohibited")
  end
end
