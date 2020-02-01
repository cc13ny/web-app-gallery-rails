class UserEducationsController < ApplicationController
  before_action :set_user_education, only: [:show, :edit, :update, :destroy]

  # GET /user_educations
  # GET /user_educations.json
  def index
    @user_educations = UserEducation.all
  end

  # GET /user_educations/1
  # GET /user_educations/1.json
  def show
  end

  # GET /user_educations/new
  def new
    @user_education = UserEducation.new
  end

  # GET /user_educations/1/edit
  def edit
  end

  # POST /user_educations
  # POST /user_educations.json
  def create
    @user_education = UserEducation.new(user_education_params)

    respond_to do |format|
      if @user_education.save
        format.html { redirect_to @user_education, notice: 'User education was successfully created.' }
        format.json { render :show, status: :created, location: @user_education }
      else
        format.html { render :new }
        format.json { render json: @user_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_educations/1
  # PATCH/PUT /user_educations/1.json
  def update
    respond_to do |format|
      if @user_education.update(user_education_params)
        format.html { redirect_to @user_education, notice: 'User education was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_education }
      else
        format.html { render :edit }
        format.json { render json: @user_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_educations/1
  # DELETE /user_educations/1.json
  def destroy
    @user_education.destroy
    respond_to do |format|
      format.html { redirect_to user_educations_url, notice: 'User education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_education
      @user_education = UserEducation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_education_params
      params.require(:user_education).permit(:user_id, :school_name, :degree, :field_of_study, :start_year, :start_month, :end_year, :end_month, :grade, :description)
    end
end
