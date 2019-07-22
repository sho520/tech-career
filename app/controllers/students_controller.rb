class StudentsController < ApplicationController

  
  def show                                                                     #生徒のマイページ。ログインしている生徒は自分のマイページに移動可能。CAは全生徒の各マイページに移動可能。
    # @students = Student.all
    @student = Student.find(params[:id])                                       #対象の生徒のマイページに移動
    @job_state = @student.student_jobs.all.order("student_job_state_id ASC")   #対象の生徒の全選考情報を中間テーブルstudent_jobsテーブルから取得して、student_job_state_id順に並び替えて取得
    @jobs = Job.all
  end

  def edit
    @student = Student.find(params[:id])
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

  def ca
    @student = Student.find(params[:id])
    @student.advisor_id = current_advisor.id
    @student.save
    redirect_to students_advisors_path
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
                                    :advisor_id,
                                   )
  end

end
