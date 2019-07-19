class JobsController < ApplicationController

  def index
    # @Chat = Chat.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "求人登録が完了しました"
      redirect_to :root
    else
      
    end
  end

  def all
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:name, :industry_id, :capital, :sales)
  end

end
