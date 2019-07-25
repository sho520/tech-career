class Group < ApplicationRecord

  belongs_to :advisors
  has_many :messages

end
