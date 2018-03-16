require 'rails_helper'

RSpec.describe "Newruncode", type: :request do
  it "Can create a new basic runcode" do
  #  cable = Factory(:wire)
    visit runcodes_path
    click_link "New"
    fill_in "Runcode", :with => "123456"
    fill_in "Description", :with => "a basic runcode!"
    click_button "Create"
    expect(page).to have_content("created")
  end
#  it "fails to create wire when terminal number is empty but fail if punchblock doesnt exist" do
#    visit wires_path
#    click_link "New"
#    fill_in "Signal type", :with => "100"
#    #we will leave all other fields blank to test validations
#    click_button "Create"
#    expect(page).to have_content("1 error prohibited")
#  end

  it "Should display the wire, terminal and port field", type: :request do
    visit runcodes_path
    click_link "New"
    expect(page).to have_content("Wire")
    expect(page).to have_content("Terminal")
    expect(page).to have_content("Port")
  end

  #it "should not allow you to enter a runcode if wire is not selected", type: :request do
  #  visit runcodes_path
  #  click_link "New"
  #  fill_in "Runcode", :with => "123456"
  #  fill_in "Description", :with => "a basic runcode!"
  #  click_button "Create"
  #  expect(page).to_not have_content("created")
  #end

end
