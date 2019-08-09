class GroupsController < ApplicationController
  # before_action :set_group

  def index
    if advisor_signed_in?
      @students = Student.all
      @group = Group.new
      @groups = Group.where("advisor_id = ?",current_advisor.id)
      @message = Message.new
    end

    if student_signed_in?
      redirect_to controller: 'groups', action: 'new'
      @students = Student.all
      @group = Group.new
      @groups = Group.where("student_id = ?",current_student.id)
      @message = Message.new

    end

  end

  def show
    if student_signed_in?
    @group = Group.find(params[:id])
    @student = Student.find(@group.student_id)
    @group = Group.find(params[:id])
    @studentname = Group.where(student_id: @student.id)
    @groups = Group.all
    @message = Message.new
    @messages = Message.where(group_id: params[:id])
    end

    if advisor_signed_in?
    @group = Group.find(params[:id])
    @student = Student.find(@group.student_id)
    @studentname = Group.where(student_id: @student.id)
    @groups = Group.where("advisor_id = ?",current_advisor.id)
    @message = Message.new
    @messages = Message.where(group_id: params[:id])
    end

  end

  def new
    if advisor_signed_in?
      @students = Student.all
      @students_ids =@students.ids
      @group = Group.new
      @groups = Group.where("advisor_id = ?",current_advisor.id)
      @group_student_ids=[]
      @groups.each do |group|
        user_id = group.student_id
        @group_student_ids << user_id
      end
      @group_student_ids.each do |id|
        @students_ids.delete(id)
      end
      @students =[]
      @students_ids.each do |id|
        student = Student.find(id)
        @students << student
      end
      @message = Message.new
    end

  if student_signed_in?
    @advisors = Advisor.all
    @advisors_ids =@advisors.ids
    @group = Group.new
    @groups = Group.where("student_id = ?",current_student.id)
    @group_advisor_ids=[]
    @groups.each do |group|
      user_id = group.advisor_id
      @group_advisor_ids << user_id
    end
    @group_advisor_ids.each do |id|
      @advisors_ids.delete(id)
    end
    @advisors =[]
    @advisors_ids.each do |id|
      advisor = Advisor.find(id)
      @advisors << advisor
    end
    @message = Message.new
  end
end


  def create
      @group = Group.new(group_params_student)
      @group.advisor_id = current_advisor.id
      @group.save

      redirect_to controller: 'groups', action: 'index'

  end

  def create_student_group
    @group = Group.new(group_params_advisor)
      @group.student_id = current_student.id
      @group.save

      redirect_to controller: 'groups', action: 'index'

  end




  private

  def group_params_student
    params.require(:group).permit(:student_id)
  end

  def group_params_advisor
    params.require(:group).permit(:advisor_id)
  end

end
