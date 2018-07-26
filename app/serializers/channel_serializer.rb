class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :user_id
end
