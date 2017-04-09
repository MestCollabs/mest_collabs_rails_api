class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :country, :phone_number
  has_one :mester
end
