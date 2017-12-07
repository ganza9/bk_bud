class Flower < ApplicationRecord
  has_many :reviews, :as => :reviewable
end
