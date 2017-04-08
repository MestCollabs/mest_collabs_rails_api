class Feed < ApplicationRecord
  belongs_to :mester
  has_many :feedback
end
