class JobsController < ApplicationController

  def index
    @jobs = Job.all

  end

  def new
    @job = Job.new
  end

  def create

    @Chat = Chat.new(message_params)
    @Chat.save


    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "求人登録が完了しました"
      redirect_to :root
    else

    end
  end

  def all
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
    @insurances = @job.various_insurances.all
    @allowances = @job.various_allowances.all
    @holiday_vacations = @job.holiday_vacations.all
    @languages = @job.languages.all
    if student_signed_in?
      @number = current_student.id
      # @job_state = StudentJob.where(student == current_student.id).all
      # @job_state = @job.student_jobs.find_by(student == current_student.id)
    end
    # binding.pry
  end

  def keep
    
  end

  private

  def job_params
    params.require(:job).permit(:name, :industry_id, :capital, :sales)
  end

  def message_params
    params.require(:chat).permit(:comment, :student_id, :advisor_id)
    # .merge(user_id: current_user.id)
  end

end
