class JobsController < ApplicationController
  before_action :load_job, except: [:index, :new, :create]

  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new(company_id: params[:company_id])
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    @job.save
    redirect_to @job
  end

  def update
    @job.update(job_params)
    redirect_to @job
  end

  def apply
    @job_application = @job.job_applications.new
  end

  def submit_application
    @job_application = JobApplication.new(job_application_params)
    @job_application.applied_at = Time.now
    @job_application.save
    redirect_to @job
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def load_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:title, :description, :company_id)
    end

    def job_application_params
      params.require(:job_application).permit(:user_id, :job_id, :applied_at)
    end
end
