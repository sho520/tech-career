class ChatsController < ApplicationController

  def index
    @jobs = Job.all
    @chats = Chat.new
    @images = JobImage.all
  end

  def new
    @chat = Chat.new
  end


  def create
    @chat = Chat.new(message_params)
    # @chat.user = current_student
    # binding.pry
    @chat.save
    redirect_to controller: 'jobs', action: 'index'
  end



  private

  def message_params
    params.require(:chat).permit(:comment,:student_id, :advisor_id)
    # .merge(user_id: current_user.id)
  end

end
