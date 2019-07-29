class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    # @chat.user = current_student
    binding.pry
    @message.save
  end



  private

  def message_params
    params.require(:message).permit(:comment,:position_number).merge(group_id: params[:group_id])
    # .merge(user_id: current_user.id)
  end

end
