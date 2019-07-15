class Chat < ApplicationRecord

  belongs_to :advisor
  belongs_to :student

end
