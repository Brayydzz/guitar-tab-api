class Tuning < ApplicationRecord
    has_many :tracks, dependent: :destroy
end
