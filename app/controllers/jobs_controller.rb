class JobsController < ApplicationController

  def index
    @jobs = Job.all

  end

  def new
    @job = Job.new
  end

  def create

    # @Chat = Chat.new(message_params)
    # @Chat.save


    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "求人登録が完了しました"
      redirect_to :root
    else
      flash[:failure] = "入力に誤りがあります"
      render "new"
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
    @job_state = @job.student_jobs
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
    params.require(:job).permit(:name,
                                :industry_id,
                                :capital,
                                :sales,
                                :number_of_employee_id,
                                :number_of_interviews,
                                :establish_date,
                                :market_information,
                                :market_system,
                                :url,
                                :location_id,
                                :business,
                                :company_feature,
                                :min_age,
                                :max_age,
                                :reason_for_age_restriction,
                                :number_of_interviews,
                                :educational_background,
                                :overtime_pay,
                                :commute_allowance,
                                :other_allowance,
                                :various_insurance_id,
                                :various_allowance_id,
                                :holiday_vacation_id,
                                :required_qualification,
                                :ideal_candidate,
                                :contents_of_test,
                                :yearly_holiday,
                                :work_transfer,
                                :working_place_1,
                                :working_place_2,
                                :working_place_3,
                                :working_place_4,
                                :position,
                                :employee_type_id,
                                :job_description,
                                :required_work_experience,
                                :working_hours,
                                :break_time,
                                :about_overtime,
                                :recruitment_period,
                                :number_of_recruitment_people,
                                :employment_period,
                                :add_info_working_time,
                                :salary_type,
                                :basic_salary,
                                :promotion,
                                :bonus,
                                :min_annual_income,
                                :max_annual_income,
                                :add_info_income,
                                :example_annual_income,
                                :trial_period,
                                :add_info_trial_period,
                                :discretionary_labor_system,
                                :fixed_overtime_pay,
                                :add_info_fixed_overtime_pay,
                                :remark,
                                :job_state_id,)
  end

  def message_params
    params.require(:chat).permit(:comment, :student_id, :advisor_id)
    # .merge(user_id: current_user.id)
  end

end
