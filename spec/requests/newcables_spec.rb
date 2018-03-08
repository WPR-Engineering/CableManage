require 'rails_helper'

RSpec.describe "Newcables", type: :request do
  it "creates a cable" do
  #  cable = Factory(:wire)
    visit wires_path
    click_link "New"
    fill_in "Wire number", :with => "100"
    fill_in "Wire type", :with => "Audio"
    click_button "Create"
    visit wires_path"/1"
    #expect(page).to have_content("Wire was successfully created")
  end
  it "fails to create wire when wire type is empty" do
    visit wires_path
    click_link "New"
    fill_in "Wire number", :with => "100"
    #we will leave all other fields blank to test validations
    click_button "Create"
    expect(page).to have_content("Wire type can't be blank")
  end
end
