class UserChannelSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user_id
  has_one :channel_id
end
