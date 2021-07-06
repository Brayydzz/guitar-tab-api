class Track < ApplicationRecord
  belongs_to :tuning

  validates :title, presence: true
  validates :artist, presence: true
  validates :url, presence: true
end
