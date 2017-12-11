require "rails_helper"

describe "the view pre roll details" do
  before do
    user = FactoryBot.create(:user)
    visit '/users/sign_in'
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
  end

  it "allows all users to view pre roll details" do
    pre_roll = FactoryBot.create(:pre_roll)
    visit pre_rolls_path
    click_on 'Show'
    expect(page).to have_content("Name")
  end

  it "allows an admin to create a new pre roll" do
    visit pre_rolls_path
    click_on "New Pre Roll"
    fill_in "Name", with: "Caramels"
    fill_in "Price", with: 10
    fill_in "Thc", with: 20
    fill_in "Description", with: "A new pre roll."
    click_button "Create Pre Roll"
    expect(page).to have_content("Caramels")
  end

  it "allows an admin to edit a pre roll" do
    pre_roll = FactoryBot.create(:pre_roll)
    visit pre_roll_path(pre_roll)
    click_on "Edit Pre Roll"
    fill_in "Name", with: "New Pre Roll"
    click_button "Save"
    expect(page).to have_no_content("Test Pre Roll")
    expect(page).to have_content("New Pre Roll")
  end

  it "allows an admin to delete a pre roll" do
    pre_roll = FactoryBot.create(:pre_roll)
    visit pre_roll_path(pre_roll)
    click_on "Delete Pre Roll"
    expect(page).to have_no_content("Test Pre Roll")
  end

  it "does not allow a non-admin to add pre rolls"  do
    visit pre_rolls_path
    expect(page).to have_no_content("Add a Pre Roll")
  end

  it "does not allow a non-admin to edit pre rolls"  do
    pre_roll = FactoryBot.create(:pre_roll)
    visit pre_rolls_path
    expect(page).to have_no_content("Edit Pre Roll")
  end
end
