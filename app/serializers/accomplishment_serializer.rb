class AccomplishmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date_accomplished, :color
  has_one :user
end
