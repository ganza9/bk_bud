require 'rails_helper'

describe Review do
  it { should belong_to :flower }
  it { should belong_to :edible }
  it { should belong_to :other }
  it { should belong_to :pre_roll }
end
