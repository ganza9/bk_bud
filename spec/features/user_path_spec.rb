
require "rails_helper"

describe "the user management path" do

  it "stores a username in addition to default Devise attributes" do
    visit "users/sign_up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "test123"
    fill_in "Password confirmation", with: "test123"
    click_on "Sign up"
    expect(page).to have_content("Brooklyn Bud")
  end
end
