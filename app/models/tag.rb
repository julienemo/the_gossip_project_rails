class Tag < ApplicationRecord
  has_many :gossip_tags
  has_many :gossip, through: :gossip_tags
end
