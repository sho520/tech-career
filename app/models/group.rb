class Group < ApplicationRecord

  has_many :advisors
  has_many :students
  has_many :messages

end
