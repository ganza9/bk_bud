class Other < ApplicationRecord
  has_many :reviews, as: :reviewable
end
