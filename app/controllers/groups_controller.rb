class GroupsController < ApplicationController
  # before_action :set_group

  def index
    @students = Student.all
    @group = Group.new
    @groups = Group.all
    @message = Message.new
  end

  def show
    @students = Student.all
    @group = Group.find(params[:id])
    @groups = Group.all
    @message = Message.new
  end

  def new
    @group = Group.new
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
