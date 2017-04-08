class FeedSerializer < ActiveModel::Serializer
  attributes :id, :body, :picture, :mest_power
  has_one :mester
end
