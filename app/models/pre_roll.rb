class PreRoll < ApplicationRecord
  has_many :reviews, as: :reviewable
end
