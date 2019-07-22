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

  def all                                                                  #求人一覧の画面にいく。（CAのみ可能。CAでログインした場合のヘッダーから移動できる）
    @jobs = Job.all
  end

  def show                                                                 #求人の詳細画面
    @job = Job.find(params[:id])                                           #特定の求人情報のインスタンス変数を生成
    @insurances = @job.various_insurances.all                              #求人の各種保険の情報全てを、various_insurancesテーブルから取得（中間テーブルvarious_insurance_jobsにて管理している）
    @allowances = @job.various_allowances.all                              #求人の諸手当の情報全てを、various_allowancesテーブルから取得（中間テーブルvarious_allowance_jobsにて管理している）
    @holiday_vacations = @job.holiday_vacations.all                        #求人の休日休暇の情報全てを、holiday_vacationsテーブルから取得（中間テーブルholiday_vacation_jobsにて管理している）
    @languages = @job.languages.all                                        #求人の使用言語の情報全てを、languagesテーブルから取得（中間テーブルlanguage_jobsにて管理している）
    @job_state = @job.student_jobs                                         #対象の@jobの求人について、全生徒の選考状況の情報を中間テーブルstudent_jobsテーブルから取得（これはCAのみ使用する変数、生徒は下のifの中の変数を使用する）
    if student_signed_in?                                                  #生徒でログインしている場合
      @state = @job.student_jobs.find_by(student_id: current_student.id)   #対象の求人@jobの求人について、全生徒の選考状況が格納されている中間テーブルstudent_jobsテーブルの中で、生徒idが自分のものだけの1件を取得
    end
  end

  def keep                                                                                      #jobsコントローラーのkeepアクションは、キープ中となっている選考状況を元に戻す操作を行っている
    if student_signed_in?                                                                       #生徒でログインしている時に、自分の選考状況を操作可能
      @new_state = StudentJob.find_by(student_id: current_student.id, job_id: params[:id])      #student_jobテーブルの内、student_idがログイン中のユーザーidで、かつjob_idは現在指定したjob_idをいれt、1つのレコードを取得
      @new_state.student_job_state_id = 1                                                       #キープ中のidが2で、その1つ前、つまりid = 1を代入している
      @new_state.save                                                                           #student_job_state_idが1に変更されたものを保存している
      redirect_to student_path(id: current_student.id)                                          #元のページに戻る
    else                                                                                        #仮にCAでログインしている場合、勝手に生徒の選考状況を変更するわけに行かないので、トップページに戻る
      redirect_to :root_path
    end
  end

  def apply                                                                                     #jobsコントローラーのkeepアクションは、キープ中となっている選考状況を応募に進める操作を行っている
    if student_signed_in?                                                                       #生徒でログインしている時に、自分の選考状況を操作可能
      @new_state = StudentJob.find_by(student_id: current_student.id, job_id: params[:id])      #student_jobテーブルの内、student_idがログイン中のユーザーidで、かつjob_idは現在指定したjob_idをいれt、1つのレコードを取得
      @new_state.student_job_state_id = 3                                                       #キープ中のidが2で、その1つ次、つまりid = 3を代入している
      @new_state.save                                                                           #student_job_state_idが3に変更されたものを保存している
      redirect_to student_path(id: current_student.id)                                          #元のページに戻る
    else                                                                                        #仮にCAでログインしている場合、勝手に生徒の選考状況を変更するわけに行かないので、トップページに戻る
      redirect_to :root_path
    end
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
