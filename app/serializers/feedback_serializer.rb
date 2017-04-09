class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :body, :time_ago
  has_one :mester
  has_one :feed
end
