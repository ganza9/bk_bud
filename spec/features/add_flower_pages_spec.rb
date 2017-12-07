require 'rails_helper'

describe "the view a flower process" do
  it "views a flower" do
    visit flowers_path
    click_link 'Show'
    expect(page).to have_content 'Blue Dream', 14, 18, 'Blueberry x Haze. A West Coast classic, this potent sativa provides happy, uplifting, and euphoric effects without heavy sedation.'
  end
end
