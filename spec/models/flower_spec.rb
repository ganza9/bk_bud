require 'rails_helper'

describe Flower do
  it { should have_many :reviews }
end

describe Flower do
  it 'has proper name' do
    flower = FactoryBot.create(:flower)
    flower.price.should eq 14
  end
end
