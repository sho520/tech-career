class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    
  end

  def create
  end

  def all
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

 
end
