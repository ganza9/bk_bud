require 'rails_helper'

describe Other do
  it { should have_many :reviews }
end

describe Other do
  it 'has proper name' do
    other = FactoryBot.create(:other)
    other.description.should eq '10 inch Gandalf Pipe made on 44mm tubing with classic carb and extra-long stem. Complicated times call for deep thoughts in smoky silence. Consider every path and weigh every option with your trusted Gandalf.'
  end
end
