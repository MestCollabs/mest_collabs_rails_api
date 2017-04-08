class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :tagline, :description, :logo, :email, :website, :phone, :angel, :crunchcase, :twitter, :facebook, :linkedin
end
