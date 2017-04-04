class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :logo, :email, :website, :phone, :angel, :crunchcase, :twitter, :facebook, :linkedin
end
