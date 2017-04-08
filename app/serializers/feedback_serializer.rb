class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :mester
  has_one :feed
end
