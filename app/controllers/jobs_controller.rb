class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @company = Company.find_by_id(params[:company_id])
    @jobs = Job.where(company: @company)
  end

  def list
    @jobs = Job.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @job = Job.find_by_id(params[:id])
    @company = @job.company
  end

  # GET /jobs/new
  def new
    @company = Company.find_by_id(params[:company_id])
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find_by_id(params[:id])
    @company = @job.company
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @company = Company.find_by_id(params[:company_id])
    @job = Job.new(job_params)
    @job.expires_at = Time.now + 60.days

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :description, :company_id, :paid_at, :expires_at, :closed_at)
    end
end
