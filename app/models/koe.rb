class Koe < ApplicationRecord
  belongs_to :user
  # has_many :gifts


  validates :text, presence: true
end
