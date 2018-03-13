require 'rails_helper'

RSpec.describe "Newruncode", type: :request do
  it "Can create a new basic runcode" do
  #  cable = Factory(:wire)
    visit runcodes_path
    click_link "New"
    fill_in "Runcode", :with => "123456"
    fill_in "Description", :with => "a basic runcode!"
    click_button "Create"
    expect(page).to have_content("Runcode was successfully created")
  end
#  it "fails to create wire when terminal number is empty but fail if punchblock doesnt exist" do
#    visit wires_path
#    click_link "New"
#    fill_in "Signal type", :with => "100"
#    #we will leave all other fields blank to test validations
#    click_button "Create"
#    expect(page).to have_content("1 error prohibited")
#  end
end
