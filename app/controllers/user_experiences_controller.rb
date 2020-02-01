class UserExperiencesController < ApplicationController
  before_action :set_user_experience, only: [:show, :edit, :update, :destroy]

  # GET /user_experiences
  # GET /user_experiences.json
  def index
    @user_experiences = UserExperience.all
  end

  # GET /user_experiences/1
  # GET /user_experiences/1.json
  def show
  end

  # GET /user_experiences/new
  def new
    @user_experience = UserExperience.new
  end

  # GET /user_experiences/1/edit
  def edit
  end

  # POST /user_experiences
  # POST /user_experiences.json
  def create
    @user_experience = UserExperience.new(user_experience_params)

    respond_to do |format|
      if @user_experience.save
        format.html { redirect_to @user_experience, notice: 'User experience was successfully created.' }
        format.json { render :show, status: :created, location: @user_experience }
      else
        format.html { render :new }
        format.json { render json: @user_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_experiences/1
  # PATCH/PUT /user_experiences/1.json
  def update
    respond_to do |format|
      if @user_experience.update(user_experience_params)
        format.html { redirect_to @user_experience, notice: 'User experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_experience }
      else
        format.html { render :edit }
        format.json { render json: @user_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_experiences/1
  # DELETE /user_experiences/1.json
  def destroy
    @user_experience.destroy
    respond_to do |format|
      format.html { redirect_to user_experiences_url, notice: 'User experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_experience
      @user_experience = UserExperience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_experience_params
      params.require(:user_experience).permit(:user_id, :company_name, :company_id, :title, :position_variant_id, :start_year, :start_month, :end_year, :end_month, :present, :location, :description)
    end
end
