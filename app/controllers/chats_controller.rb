class ChatsController < ApplicationController

  def index
  end

  def new
    @chat = Chat.new
  end


  def create
    @chat = Chat.new(message_params)
    @chat.save
    redirect_to controller: 'jobs', action: 'index'
  end



  private

  def message_params
    params.require(:chat).permit(:comment,:student_id, :advisor_id,:commentspeaker)
  end

end
