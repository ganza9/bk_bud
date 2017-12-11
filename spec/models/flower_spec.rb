require 'rails_helper'

describe Flower do

    it { should have_many :reviews }

    it 'has a price' do
      flower = FactoryBot.create(:flower, :price => 14)
      flower.price.should eq 14
    end

    it 'has a name' do
      flower = FactoryBot.create(:flower, :name => 'Blue Dream')
      flower.name.should eq 'Blue Dream'
    end

    it 'has a thc percentage' do
      flower = FactoryBot.create(:flower, :thc => 22)
      flower.thc.should eq 22
    end

    it 'has a description' do
      flower = FactoryBot.create(:flower, :description => 'Sativa')
      flower.description.should eq 'Sativa'
    end
end
