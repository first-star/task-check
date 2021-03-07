class List < ApplicationRecord
  belongs_to :user

  validates :title, length: { in: 1..100 }

end
