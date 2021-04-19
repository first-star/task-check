class Card < ApplicationRecord
  belongs_to :list

  validates :title,  presence: true, length: { maximum: 100 }
  validates :memo, length: { maximum: 1000 }

end

