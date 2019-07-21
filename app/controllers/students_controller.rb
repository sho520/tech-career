class StudentsController < ApplicationController
  
  def show
    @students = Student.all
    @student = Student.find(params[:id])
    @job_state = @student.student_jobs.all.order("student_job_state_id ASC")
  end

end
