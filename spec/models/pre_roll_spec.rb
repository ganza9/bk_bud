require 'rails_helper'

describe PreRoll do
  it { should have_many :reviews }
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :thc }
  it { should validate_presence_of :description }


  it 'has a name' do
    pre_roll = FactoryBot.create(:pre_roll, :name => 'Gorilla Glue')
    pre_roll.name.should eq 'Gorilla Glue'
  end

  it 'has a price' do
    pre_roll = FactoryBot.create(:pre_roll, :price => 14)
    pre_roll.price.should eq 14
  end

  it 'has a thc percentage' do
    pre_roll = FactoryBot.create(:pre_roll, :thc => 22)
    pre_roll.thc.should eq 22
  end

  it 'has a description' do
    pre_roll = FactoryBot.create(:pre_roll, :description => 'Sativa')
    pre_roll.description.should eq 'Sativa'
  end
end
