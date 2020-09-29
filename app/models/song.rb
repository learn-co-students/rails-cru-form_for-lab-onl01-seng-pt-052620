class Song < ApplicationRecord
    has_many :genres
    belongs_to :artist
end
