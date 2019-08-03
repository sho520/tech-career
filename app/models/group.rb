class Group < ApplicationRecord

  belongs_to :student,optional: true
  belongs_to :advisor,optional: true
  has_many :messages

  def show_last_comment
    if (last_comment = comment.last).present?
      last_comment.content? ? last_comment.content : '画像が投稿されています'
    else
      'まだメッセージはありません。'
    end
  end




end
