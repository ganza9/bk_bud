class Review < ApplicationRecord
  belongs_to :edible
  belongs_to :flower
  belongs_to :other
  belongs_to :pre_roll
end
