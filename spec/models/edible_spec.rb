require 'rails_helper'

describe Edible do
  it { should have_many :reviews }
end

describe Edible do
  it 'has proper name' do
    edible = FactoryBot.create(:edible)
    edible.name.should eq 'ZootRocks'
  end
end
