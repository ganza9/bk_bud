class Edible < ApplicationRecord
  has_many :reviews, :as => :reviewable
end
