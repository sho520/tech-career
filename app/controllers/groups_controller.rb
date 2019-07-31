class GroupsController < ApplicationController
  # before_action :set_group

  def index
    @students = Student.all
    @group = Group.new
    @groups = Group.where("advisor_id = ?",current_advisor.id)
    @message = Message.new
  end

  def show
    if student_signed_in?
    @students = Student.all
    @student = Student.find(params[:id])
    @group = Group.find(params[:id])
    @studentname = Group.where(student_id: @student.id)
    @groups = Group.all
    @message = Message.new
    # @messages = Message.where(params[:group_id])
    @messages = Message.where(group_id: params[:id])
    end

    if advisor_signed_in?
    @students = Student.all
    @student = Student.find(params[:id])
    @group = Group.find(params[:id])
    @studentname = Group.where(student_id: @student.id)
    @groups = Group.where("advisor_id = ?",current_advisor.id)
    @message = Message.new
    # @messages = Message.where(params[:group_id])
    @messages = Message.where(group_id: params[:id])
    end

  end

  def new
    @students = Student.all
    @students_ids =@students.ids
    @group = Group.new
    @groups = Group.where("advisor_id = ?",current_advisor.id)
    # @uesr_ids=@groups
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

  def create
    @group = Group.new(group_params)
    @group.advisor_id = current_advisor.id
    # binding.pry
    @group.save
    # @group.student_id = 1
    # if @group.save
    redirect_to controller: 'groups', action: 'index'
    # else
    #   render :new
    # end
  end

  private

  def group_params
    params.require(:group).permit(:student_id)
    # params.require(:group).permit(:name, { :user_ids => [] })
    # .merge(user_id: current_user.id)
  end

  # def set_group
  #   # binding.pry
  #   @group = Group.find(params[:id])
  # end

end
