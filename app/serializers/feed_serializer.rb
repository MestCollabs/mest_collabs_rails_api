class FeedSerializer < ActiveModel::Serializer
  attributes :id, :body, :picture
  has_one :mester
end
