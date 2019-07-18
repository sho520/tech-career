class ChatsController < ApplicationController

  def new
    @chat = Chat.new
  end


  def create
    @Chat = Chat.new(message_params)
    @Chat.save
  end



  private

  def message_params
    params.require(:chat).permit(:comment, :student_id, :advisor_id)
    # .merge(user_id: current_user.id)
  end

end
