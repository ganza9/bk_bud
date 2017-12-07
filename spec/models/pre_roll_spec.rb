require 'rails_helper'

describe PreRoll do
  it { should have_many :reviews }
end

describe PreRoll do
  it 'has proper thc content' do
    pre_roll = FactoryBot.create(:pre_roll)
    pre_roll.thc.should eq 24
  end
end
