class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, throught: :bookmarks
end
