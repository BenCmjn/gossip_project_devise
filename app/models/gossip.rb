class Gossip < ApplicationRecord
	belongs_to :author, class_name: 'Moussaillon', foreign_key: 'moussaillon_id'
end
