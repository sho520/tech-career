class StudentsController < ApplicationController
  
  def show                                                                     #生徒のマイページ。ログインしている生徒は自分のマイページに移動可能。CAは全生徒の各マイページに移動可能。
    # @students = Student.all
    @student = Student.find(params[:id])                                       #対象の生徒のマイページに移動
    @job_state = @student.student_jobs.all.order("student_job_state_id ASC")   #対象の生徒の全選考情報を中間テーブルstudent_jobsテーブルから取得して、student_job_state_id順に並び替えて取得
  end

end
