class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, throught: :bookmarks
end
