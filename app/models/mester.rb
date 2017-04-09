class Mester < ApplicationRecord
  has_many :feed
  has_many :post
  has_many :feedback
  has_one  :profile
end
