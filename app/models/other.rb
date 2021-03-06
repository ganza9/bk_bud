class Other < ApplicationRecord
  has_many :reviews, :as => :reviewable
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
