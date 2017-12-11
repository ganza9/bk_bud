require "rails_helper"

describe "the view other details" do
  before do
    user = FactoryBot.create(:user)
    visit '/users/sign_in'
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
  end

  it "allows all users to view other details" do
    other = FactoryBot.create(:other)
    visit others_path
    click_on 'Show'
    expect(page).to have_content("Name")
  end

  it "allows an admin to create a new other" do
    visit others_path
    click_on "New Other"
    fill_in "Name", with: "Sour Diesel"
    fill_in "Price", with: 10
    fill_in "Description", with: "A new other."
    click_button "Create Other"
    expect(page).to have_content("Sour Diesel")
  end

  it "allows an admin to edit a other" do
    other = FactoryBot.create(:other)
    visit other_path(other)
    click_on "Edit Other"
    fill_in "Name", with: "New Other"
    click_button "Save"
    expect(page).to have_no_content("Test Other")
    expect(page).to have_content("New Other")
  end

  it "allows an admin to delete a other" do
    other = FactoryBot.create(:other)
    visit other_path(other)
    click_on "Delete Other"
    expect(page).to have_no_content("Test Other")
  end

  it "does not allow a non-admin to add others"  do
    visit others_path
    expect(page).to have_no_content("Add a Other")
  end

  it "does not allow a non-admin to edit others"  do
    other = FactoryBot.create(:other)
    visit others_path
    expect(page).to have_no_content("Edit Other")
  end
end
