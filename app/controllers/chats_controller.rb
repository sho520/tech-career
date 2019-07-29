class ChatsController < ApplicationController

  def index
    @students = Student.all
    @group = Group.new
    # @message = Message.new
    @students_advisor_ids
    @students_ids
    @student_names = Student.select("name")
    @students_advisor_ids = Student.select("advisor_id")
    @students_ids = Student.select("id")
    @message = Message.new

  end

  def new
    @message = Message.new
  end


  def create
    @message = Message.new(message_params)
    # @chat.user = current_student
    # binding.pry
    @message.save

    redirect_to controller: 'groups', action: 'index'
  end



  private

  def message_params
    params.require(:message).permit(:comment,:student_id)
    # .merge(user_id: current_user.id)
  end


end

