class Channel < ApplicationRecord
 has_many :users, through: :user_channel
end
