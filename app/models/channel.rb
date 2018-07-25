class Channel < ApplicationRecord
 has_many :users, through: :user_channel
 has_many :messages
end
