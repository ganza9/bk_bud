require "rails_helper"

describe "the view flower details" do
  before do
    user = FactoryBot.create(:user)
    visit '/users/sign_in'
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
  end

  it "allows all users to view flower details" do
    flower = FactoryBot.create(:flower)
    visit flowers_path
    click_on 'Show'
    expect(page).to have_content("Name")
  end

  it "allows an admin to create a new flower" do
    visit flowers_path
    click_on "New Flower"
    fill_in "Name", with: "Sour Diesel"
    fill_in "Price", with: 10
    fill_in "Thc", with: 20
    fill_in "Description", with: "A new flower."
    click_button "Create Flower"
    expect(page).to have_content("Sour Diesel")
  end

  it "allows an admin to edit a flower" do
    flower = FactoryBot.create(:flower)
    visit flower_path(flower)
    click_on "Edit Flower"
    fill_in "Name", with: "New Flower"
    click_button "Save"
    expect(page).to have_no_content("Test Flower")
    expect(page).to have_content("New Flower")
  end

  it "allows an admin to delete a flower" do
    flower = FactoryBot.create(:flower)
    visit flower_path(flower)
    click_on "Delete Flower"
    expect(page).to have_no_content("Test Flower")
  end

  it "does not allow a non-admin to add flowers"  do
    visit flowers_path
    expect(page).to have_no_content("Add a Flower")
  end

  it "does not allow a non-admin to edit flowers"  do
    flower = FactoryBot.create(:flower)
    visit flowers_path
    expect(page).to have_no_content("Edit Flower")
  end
end
