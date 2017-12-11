require "rails_helper"

describe "the view edible details" do
  before do
    user = FactoryBot.create(:user)
    visit '/users/sign_in'
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
  end

  it "allows all users to view edible details" do
    edible = FactoryBot.create(:edible)
    visit edibles_path
    click_on 'Show'
    expect(page).to have_content("Name")
  end

  it "allows an admin to create a new edible" do
    visit edibles_path
    click_on "New Edible"
    fill_in "Name", with: "Caramels"
    fill_in "Price", with: 10
    fill_in "Thc", with: 20
    fill_in "Description", with: "A new edible."
    click_button "Create Edible"
    expect(page).to have_content("Caramels")
  end

  it "allows an admin to edit a edible" do
    edible = FactoryBot.create(:edible)
    visit edible_path(edible)
    click_on "Edit Edible"
    fill_in "Name", with: "New Edible"
    click_button "Save"
    expect(page).to have_no_content("Test Edible")
    expect(page).to have_content("New Edible")
  end

  it "allows an admin to delete a edible" do
    edible = FactoryBot.create(:edible)
    visit edible_path(edible)
    click_on "Delete Edible"
    expect(page).to have_no_content("Test Edible")
  end

  it "does not allow a non-admin to add edibles"  do
    visit edibles_path
    expect(page).to have_no_content("Add a Edible")
  end

  it "does not allow a non-admin to edit edibles"  do
    edible = FactoryBot.create(:edible)
    visit edibles_path
    expect(page).to have_no_content("Edit Edible")
  end
end
