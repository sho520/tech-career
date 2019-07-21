class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    if @job
      flash[:success] = "求人登録が完了しました"
      redirect_to :root
    else
      render "new"
    end
  end

  def all
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:name,
                                :industry_id,
                                :capital,
                                :sales,
                                :number_of_employee_id,
                                :establish_date,
                                :url,
                                :location_id,
                                :business,
                                :company_feature,
                                :age,
                                :reason_for_age_restriction,
                                :required_qualification,
                                :ideal_candidate,
                                :contents_of_test,
                                :yearly_holiday,
                                :working_place_1,
                                :working_place_2,
                                :working_place_3,
                                :working_place_4,
                                :position,
                                :employee_type_id,
                                :job_description,
                                :required_work_experience,
                                :working_hours,
                                :recruitment_period,
                                :number_of_recruitment_people,
                                :employment_period,
                                :add_info_working_time,
                                :basic_salary,
                                :min_annual_income,
                                :max_annual_income,
                                :add_info_income,
                                :example_annual_income,
                                :trial_period,
                                :add_info_trial_period,
                                :fixed_overtime_pay,
                                :add_info_fixed_overtime_pay,
                                :remark,
                                :job_state_id,
                              )
  end

end
