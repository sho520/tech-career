class Group < ApplicationRecord

  belongs_to :student,optional: true
  belongs_to :advisor,optional: true
  has_many :messages

end
