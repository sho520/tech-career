class ChatsController < ApplicationController

  # def index
  #   @students = Student.all
  #   @group = Group.new

  #   # @students_advisor_ids
  #   # @students_ids
  #   # @student_names = Student.select("name")
  #   # @students_advisor_ids = Student.select("advisor_id")
  #   # @students_ids = Student.select("id")

  #   # @group = Group.new
  # end

  def new
    @chat = Chat.new
  end


  def create
    @chat = Chat.new(message_params)
    # @chat.user = current_student
    # binding.pry
    @chat.save

    redirect_to controller: 'chats', action: 'index'
  end



  private

  # def message_params
  #   params.require(:chat).permit(:comment,:student_id, :advisor_id,:commentspeaker)
  #   # .merge(user_id: current_user.id)
  # end


end

