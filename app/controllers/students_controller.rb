class StudentsController < ApplicationController

  def show
    @students = Student.all
    @student = Student.find(params[:id])
    @job_state = @student.student_jobs.all.order("student_job_state_id ASC")
  end

  def edit
    @student = Student.find(params[:id])
    @advisors = Advisor.all.order(id: "ASC")
  end

  def update
    if current_student.update(student_params)
      flash[:success] = "情報を変更しました"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def student_params
    params.require(:student).permit(:name,
                                    :email,
                                    :address,
                                    :birth_year,
                                    :birth_month,
                                    :birth_day,
                                    :age,
                                    :period,
                                    :team,
                                    :image,
                                    :advisor_id,)
  end

end
