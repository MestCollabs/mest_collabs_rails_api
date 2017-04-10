class FeedSerializer < ActiveModel::Serializer
  attributes :id, :body, :picture, :mest_power, :time_ago
  has_one :mester
end
