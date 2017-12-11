require 'rails_helper'

describe Edible do
  it { should have_many :reviews }
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :thc }
  it { should validate_presence_of :description }


  it 'has a name' do
    edible = FactoryBot.create(:edible)
    edible.name.should eq 'ZootRocks'
  end

  it 'has a price' do
    edible = FactoryBot.create(:edible, :price => 14)
    edible.price.should eq 14
  end

  it 'has a thc percentage' do
    edible = FactoryBot.create(:edible, :thc => 22)
    edible.thc.should eq 22
  end

  it 'has a description' do
    edible = FactoryBot.create(:edible, :description => 'Sativa')
    edible.description.should eq 'Sativa'
  end

end
