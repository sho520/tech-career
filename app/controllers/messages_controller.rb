class MessagesController < ApplicationController
  before_action :set_group
  def create
    @message = Message.new(message_params)
    # @chat.user = current_student
    # binding.pry
    @message.save
    # redirect_to controller: 'messages', action: 'show(group.id)'
    redirect_to group_path(@group)
  end



  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def message_params
    params.require(:message).permit(:comment,:position_number).merge(group_id: params[:group_id])
    # .merge(user_id: current_user.id)
  end

end
